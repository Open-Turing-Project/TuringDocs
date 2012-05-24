require "erb"
require "json"
require "fileutils"

def relative(path)
	File.expand_path(path, File.dirname(__FILE__))
end

INFO_FILE = relative("../info.json")
TEMPLATE_FILE = relative("qtHelpProject.erb")
OUT_PATH = relative("../qthelp/turing_help.qhp")
OUT_DIR = relative("../qthelp")

puts "Processing..."
info = JSON.parse(IO.read(INFO_FILE), :symbolize_names => true)
template = ERB.new(IO.read(TEMPLATE_FILE),0,"<>")
pages = info[:pages]
titles = info[:titles]
file = template.result(binding)
File.open(OUT_PATH,"w") do |f|
	f.puts file
end
# Copy all the files
puts "Copying files...."
FileUtils.cp relative("turing_help.qhcp"), OUT_DIR
FileUtils.cp_r relative("../cleanhtml/") + '/.', OUT_DIR
# Run the command-line generator
puts "Running qt docs generator..."
old_dir = Dir.pwd
Dir.chdir relative(OUT_DIR)
system("qcollectiongenerator turing_help.qhcp -o turing_help.qhc")
Dir.chdir(old_dir)

puts "Done!"