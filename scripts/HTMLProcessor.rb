# Requires nokogiri to function http://http://nokogiri.org/
require "nokogiri"
require "pp"
require "json"

def markdownFormat(htmlStr)
	text = htmlStr
	text = text.gsub(/<a href="(.*?)">(.*?)<\/a>/,'[\1](\2)')
	text = text.gsub(/<b>(.*?)<\/b>/,'**\1**')
	text = text.gsub(/<i>(.*?)<\/i>/,'*\1*')
	# remove html with nokogiri
	doc = Nokogiri::HTML(text)
	text = doc.content.to_s
	# remove random indenting
	text = text.lines.map {|l| l.chomp.lstrip}.join("\n")
	text
end

# Input: file name
# Output: hash representing page
def convFile(f)
	doc = Nokogiri::HTML(File.open(f))
	page = {}
	page[:title] = doc.xpath("/html/head/title/text()").to_s
	page[:fileName] = f.split("/").last.split(".")[0]
	page[:sections] = []
	doc.xpath("/html/body/table[2]/tr[@valign=\"top\"]").each do |e|
		s = {}
		s[:title] = e.xpath("td[1]/b/text()").to_s.gsub("&nbsp;","").chomp

		#find the examples
		e.xpath("td[2]/object").each do |o|
			exec = {}
			button = o.xpath("param[@name=\"Button\"]").first["value"].to_s
			exec[:buttontext] = button[6..-1]
			command = o.xpath("param[@name=\"Item1\"]").first["value"].to_s
			commarr = command.split(/[,;]/)
			exec[:name] = commarr[2]
			exec[:file] = commarr[1]

			s[:executables] ||= []
			s[:executables] << exec
			o.remove # remove it from the content, we have processed it
		end

		#find the code
		e.xpath("td[2]//pre").each do |o|
			code = o.content.to_s
			s[:code] ||= []
			s[:code] << code
			o.remove # remove it from the content, we have processed it
		end

		#find images
		e.xpath("td[2]//img").each do |o|
			file = o["src"]
			s[:images] ||= []
			s[:images] << file
			o.remove # remove it from the content, we have processed it
		end

		#find links, mostly for processing utility
		e.xpath("td[2]//a").each do |o|
			file = o["href"]
			s[:links] ||= []
			s[:links] << file[0..-6] # strip .html
		end

		#format the content
		content = e.xpath("td[2]").first

		unless content.content().to_s.empty?
			html = content.to_s[4..-6].strip # The slice strips the <td> tags
			s[:raw_content] = html
			s[:mdown_content] = markdownFormat(html) 
		end
		page[:sections] << s
	end

	#It might be a tutorial page such as turing_admin
	if page[:sections].empty?
		page[:htmlcontent] = doc.xpath("/html/body").to_s[6..-8]
	end

	page
end

Dir["html/*.html"].each do |f|
	puts "Processing #{f}"
	datastruct = convFile(f)
	json = JSON.pretty_generate(datastruct)
	File.open("json/" + datastruct[:fileName] + ".json", "w") do |oFile| 
		oFile.puts json
	end
end