# The Turing Documentation Parser
# By Tristan Hume
# parses the turing html documentation into a variety of formats.

# Requires nokogiri, progress and rdiscount to function 
# http://http://nokogiri.org/
# sudo gem install rdiscount nokogiri progress
require "nokogiri"
require "progress"

require "json"
require "fileutils"

class Processor
	# class methods
	class << self
		def markdownFormat(htmlStr,allowLines = true)
			text = htmlStr
			# normal newlines and indenting mean nothing, it's HTML
			text = text.lines.map {|l| l.chomp.lstrip}.join
			# convert supported tags
			text.gsub!(/<a href="(.*?)">(.*?)<\/a>/,'[\2](\1)')
			text.gsub!(/<img src="(.*?)"\/?>/,"\n\n![Doc Image](\\1)\n\n")
			text.gsub!(/<b>(.*?)<\/b>/) do |s|
				delim = $1 == "*" ? "__" : "**"
				str = $1.strip
				rpad = ($1[-1] == " ") ? " " : ""
				lpad = ($1[0] == " ") ? " " : ""
				str.empty? ? $1 : "#{lpad}#{delim}#{str}#{delim}#{rpad}"
			end
			text.gsub!(/<i>(.*?)<\/i>/) do |s|
				delim = $1 == "_" ? "*" : "_"
				str = $1.strip
				rpad = ($1[-1] == " ") ? " " : ""
				lpad = ($1[0] == " ") ? " " : ""
				str.empty? ? $1 : "#{lpad}#{delim}#{str}#{delim}#{rpad}"
			end
			text.gsub!(/<tt>(.*?)<\/tt>/,'`\1`')
			text.gsub!(/<p>(.*?)<\/p>/,"\n\n\\1") if allowLines
			text.gsub!(/<h([1-6])>(.*?)<\/h[1-6]>/) {|m| ("#"*$1.to_i)+" "+$2+"\n"}
			text.gsub!(/<li>/,"- ")
			text.gsub!(/<\/li>/,"\n")
			# table
			text.gsub!(/<table.*?>/,"  \n") if allowLines
			text.gsub!(/<\/tr>/,"  \n") if allowLines
			text.gsub!(/<td.*?>/," ")
			# remove html leftovers
			text.gsub!(/<\/?(\w+).*?>/,"")
			text.gsub!(/&nbsp;/," ")
			text.gsub!(/&gt;/,">")
			text.gsub!(/&lt;/,"<")
			text.gsub!(/&amp;/,"&")
			text.gsub!(/&133;/,"...")
			# turn (a) (b) (c) lists into real lists
			# text.gsub!(/\([a-z1-9]\)/,allowLines ? "- " : "\n- ")
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
					#o.remove # remove it from the content, we have processed it
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
					s[:mdown_content] = markdownFormat(html,s[:title] != "Syntax") 
				end
				page[:sections] << s
			end

			#It might be a tutorial page such as turing_admin
			if page[:sections].empty?
				page[:htmlcontent] = doc.xpath("/html/body").to_html(:encoding => 'UTF-8')[6..-8]
			end

			page
		end
	end
	# instance methods
	def initialize(*args)
		@folder,@ext,@skip_checked = args
	end
	def process(datastruct)
		JSON.pretty_generate(datastruct)
	end
	def save(datastruct)
		return unless should_process?(datastruct)
		processed = process(datastruct)
		File.open(file_name(datastruct[:fileName]), "w") do |oFile| 
			oFile.puts processed
		end
		processed
	end

	protected
	def normal_format?(datastruct)
		# full html content is only present for normal form pages
		(datastruct[:htmlcontent] == nil)
	end
	def manually_checked?(datastruct)
		return false if $status[:unchecked].include? datastruct[:fileName]
		$status[:handedited].include? datastruct[:fileName]
	end
	def should_process?(datastruct)
		return true unless @skip_checked
		!(manually_checked?(datastruct))
	end
	def file_name(file)
		File.expand_path("../#{@folder}/#{file}.#{@ext}", File.dirname(__FILE__))
	end
end
class TemplateProcessor < Processor
	require "erb"
	def initialize(template,*parent_args)
		super(*parent_args)
		@template = ERB.new(IO.read(template),0,"<>")
	end
	def process(page)
		@template.result(binding) # gets the page param from the binding
	end
end

class MarkdownProcessor < TemplateProcessor
	def process(datastruct)
		return Processor.markdownFormat(datastruct[:htmlcontent],true) if !normal_format?(datastruct)
		super(datastruct)
	end
end

class MarkdownHTMLProcessor < Processor
	require "rdiscount"
	def initialize(mdProcessor,*parent_args)
		super(*parent_args)
		@mdProcessor = mdProcessor
	end
	def process(datastruct)
		md = @mdProcessor.process(datastruct)
		entities(RDiscount.new(md).to_html)
	end
	private
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
end

def relative(path)
	File.expand_path(path, File.dirname(__FILE__))
end

SKIP_CHECKED = true
STATUS_FILE = relative("../status.json")
INFO_FILE = relative("../info.json")
info = {:pages => [], :special => []}
$status = JSON.parse(IO.read(STATUS_FILE), :symbolize_names => true)

mdownProcessor = MarkdownProcessor.new(relative("mdownTemplate.erb"),'markdown','md',SKIP_CHECKED)
processors = {
	markdown: mdownProcessor,
	cleanhtml: TemplateProcessor.new(relative("htmlTemplate.erb"),'cleanhtml','html',false),
	markdownhtml: MarkdownHTMLProcessor.new(mdownProcessor,'markdownhtml','html',SKIP_CHECKED),
	json: Processor.new('json','json',false)
}
copy_resources_to = ['cleanhtml','markdownhtml']

process = ARGV[0]
if !process || process == "all"
	to_run = processors.keys
elsif process == "none"
	to_run = []
else
	to_run = [process.to_sym]
end
		

resources = []
Dir["html/*.html"].each.with_progress do |f|
	datastruct = Processor.convFile(f)
	info[:pages] << datastruct[:fileName]
	info[:special] << datastruct[:fileName] if datastruct[:htmlcontent]
	# run all the processes
	to_run.each do |process|
		processors[process].save(datastruct)
	end
	# find the resources
	unless datastruct[:dependencies].empty?
		resources.concat(datastruct[:dependencies])
	end
end
# copy the necessary resources
resources.map! { |e| relative("../html/#{e}") }
copy_resources_to.each do |folder|
	FileUtils.cp resources, relative("../#{folder}/")
end
$status[:unchecked] ||= info[:pages]

def saveJSON(struct, file)
	json = JSON.pretty_generate(struct)
	File.open(file, "w") do |oFile| 
		oFile.puts json
	end
end
saveJSON($status,STATUS_FILE)
saveJSON(info,INFO_FILE)
