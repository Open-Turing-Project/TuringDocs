# The Turing Documentation Parser
# By Tristan Hume
# parses the turing html documentation into a variety of formats.

# Requires nokogiri and rdiscount to function 
# http://http://nokogiri.org/
# sudo gem install rdiscount nokogiri
require "nokogiri"
require "rdiscount"

require "erb"
require "json"
require "fileutils"

def markdownFormat(htmlStr)
	text = htmlStr
	# normal newlines and indenting mean nothing, it's HTML
	text = text.lines.map {|l| l.chomp.lstrip}.join
	# convert supported tags
	text.gsub!(/<a href="(.*?)">(.*?)<\/a>/,'[\1](\2)')
	text.gsub!(/<b>(.*?)<\/b>/,'**\1**')
	text.gsub!(/<i>(.*?)<\/i>/,'*\1*')
	text.gsub!(/<p>(.*?)<\/p>/,"\n\\1")
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
	# files this page relies on. Should be copied to the final directory
	page[:dependencies] = [] 
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
			page[:dependencies] << file
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

		textcontent = content.content().to_s
		unless textcontent.empty?
			html = content.to_s[4..-6].strip # The slice strips the <td> tags
			s[:raw_content] = html
			s[:text_content] = textcontent
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

# converts unicode characters to HTML escapes
def entities(str)
	begin
		return str.unpack("U*").collect do |s| 
			str = (s > 127 ? "&##{s};" : s.chr) 
			# there are tons of these and they do nothing
			str = "" if s == 160
			str
		end.join("")
	rescue
		puts "UTF-8 encoding failed on file"
		return str
	end
end

$mdownTemplate = ERB.new(IO.read("scripts/mdownTemplate.erb"),0,"<>")
def structureToMarkdown(page)
	$mdownTemplate.result(binding) # gets the page param from the binding
end
# puts structureToMarkdown(convFile("html/draw_arc.html"))
failed, total = 0,0
Dir["html/*.html"].each do |f|
	#puts "Processing #{f}"
	datastruct = convFile(f)
	# 404s should not exist
	if datastruct[:title] =~ /404/
		puts "Deleting 404 file #{f}"
		FileUtils.rm(f)
		next
	end
	# full html content is only present for normal form pages
	normalformat = (datastruct[:htmlcontent] == nil)
	total += 1
	# markdown
	if normalformat
		markdown = structureToMarkdown(datastruct)
		File.open("markdown/" + datastruct[:fileName] + ".md", "w") do |oFile| 
			oFile.puts markdown
		end
		# Now format it to html
		html = entities(RDiscount.new(markdown).to_html)
		# copy the necessary images
		images = datastruct[:dependencies].map {|s| "html/#{s}"}
		FileUtils.cp images, "markdownhtml/"
		File.open("markdownhtml/" + datastruct[:fileName] + ".html", "w") do |oFile| 
			oFile.puts html
		end
	else
		puts "No markdown generated for #{f}"
		failed += 1
	end
	# json
	json = JSON.pretty_generate(datastruct)
	File.open("json/" + datastruct[:fileName] + ".json", "w") do |oFile| 
		oFile.puts json
	end
end
puts "Completed. Markdown generation failed for #{failed}/#{total}"
