# Requires nokogiri to function http://http://nokogiri.org/
require "nokogiri"
require "pp"

def markdownFormat(htmlStr)
	text = htmlStr.gsub(/<b>(.*?)<\/b>/,'**\1**')
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
	page[:sections] = []
	doc.xpath("//table[2]/tr[@valign=\"top\"]").each do |e|
		s = {}
		s[:title] = e.xpath("td[1]/b/text()").to_s.gsub("&nbsp;","").chomp

		#find the examples
		s[:executables] = []
		e.xpath("td[2]/object").each do |o|
			exec = {}
			button = o.xpath("param[@name=\"Button\"]").first["value"].to_s
			exec[:buttontext] = button[6..-1]
			command = o.xpath("param[@name=\"Item1\"]").first["value"].to_s
			commarr = command.split(/[,;]/)
			exec[:name] = commarr[2]
			exec[:file] = commarr[1]

			s[:executables] << exec
			o.remove # remove it from the content, we have processed it
		end

		#find the code
		s[:code] = []
		e.xpath("td[2]//pre").each do |o|
			code = o.content.to_s
			s[:code] << code
			o.remove # remove it from the content, we have processed it
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
	page
end

pp convFile("html/font_draw.html")
# Dir["html/*.html"].each do |f|
# 	convFile(f)
# end