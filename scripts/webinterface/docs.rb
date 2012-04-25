require "sinatra"
require "json"
require "set"

SIZEMODE = false

configure do
	info = JSON.parse(IO.read("../../info.json"), :symbolize_names => true)
	status = JSON.parse(IO.read("../../status.json"), :symbolize_names => true)
	
	status[:sameSize] ||= []
	sizeToCheck = Set.new(status[:unchecked])

	set :infoStruct => info, :statusStruct => status, :sizeToCheck => sizeToCheck

	set :port, 9063
end

helpers do
	def editpage(pagename)
		mdpage = IO.read("../../markdown/#{pagename}.md")
		page = JSON.parse(IO.read("../../json/#{pagename}.json"), :symbolize_names => true)
		content = ""
		if page[:htmlcontent]
			content = page[:htmlcontent]
		else
			content << "<h1>#{page[:title]}</h1>\n"
			page[:sections].each do |sect|
				if sect[:raw_content]
					content << "<h2>#{sect[:title]}</h1>\n"
					content << sect[:raw_content]
					(sect[:code] || []).each do |code|
						content << "<pre><code>#{code}</code></pre>\n"
					end
				end
			end
		end
		total = settings.infoStruct[:pages].length
		done = nil
		if SIZEMODE
			done = total - settings.sizeToCheck.size
		else
			done = settings.statusStruct[:goodPages].length + settings.statusStruct[:badPages].length + settings.statusStruct[:sameSize].length
		end
		locals = {
			:mdpage => mdpage, :originalpage => content, 
			:pagename => page[:fileName], :totalPages => total, :donePages => done,
			:sizeMode => SIZEMODE
		}
		erb :index, :locals => locals
	end
	def goodPage(page)
		settings.statusStruct[:unchecked].delete(page)
		settings.statusStruct[:goodPages] << page
		puts "NOTICE: #{page} is good!"
	end
	def badPage(page)
		settings.statusStruct[:unchecked].delete(page)
		settings.statusStruct[:badPages] << page
		puts "NOTICE: #{page} is bad!"
	end
	def sendTo(page,bin)
		settings.statusStruct[:unchecked].delete(page)
		settings.statusStruct[bin] << page
	end
	def savePage(page,markdown)
		settings.statusStruct[:handedited] << page unless settings.statusStruct[:handedited].include? page
		File.open("../../markdown/" + page + ".md", "w") do |oFile| 
			oFile.puts markdown
		end
		puts "NOTICE: #{page} changed!"
	end
	def saveStatus()
		json = JSON.pretty_generate(settings.statusStruct)
		File.open("../../status.json", "w") do |oFile| 
			oFile.puts json
		end
	end
	def getPageToCheck()
		unless SIZEMODE
			unchecked = settings.statusStruct[:unchecked]
			return unchecked[rand(unchecked.length)]
		else
			return settings.sizeToCheck.each.first
		end
	end
end

get '/' do
  unless settings.statusStruct[:unchecked].length == 0
  	# get a random next page, so that 2 people won't get the same one at the same time
  	page = getPageToCheck()
  	redirect to("/pages/#{page}"), 303
  else
  	"No more pages!"
  end
end

post '/good/:page' do
	sendTo(params[:page],:goodPages)
	saveStatus()
end

post '/bad/:page' do
	sendTo(params[:page],:badPages)
	saveStatus()
end

post '/samesize/:page' do
	settings.sizeToCheck.delete(params[:page])
	sendTo(params[:page],:sameSize)
	saveStatus()
end
post '/diffsize/:page' do
	settings.sizeToCheck.delete(params[:page])
end

post '/save/:page' do
	savePage(params[:page],params[:markdown])
	sendTo(params[:page],:goodPages)
	saveStatus()
end

get '/pages/:page' do
	editpage(params[:page]) if settings.infoStruct[:pages].include? params[:page]
end