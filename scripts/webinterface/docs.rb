require "sinatra"
require "json"

configure do
	info = JSON.parse(IO.read("../../info.json"), :symbolize_names => true)
	status = JSON.parse(IO.read("../../status.json"), :symbolize_names => true)
	status[:sameSize] ||= []
	set :infoStruct => info, :statusStruct => status

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
		done = settings.statusStruct[:goodPages].length + settings.statusStruct[:badPages].length
		erb :index, :locals => {:mdpage => mdpage, :originalpage => content, :pagename => page[:fileName], :totalPages => total, :donePages => done}
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
end

get '/' do
  unchecked = settings.statusStruct[:unchecked]
  unless unchecked.length == 0
  	# get a random next page, so that 2 people won't get the same one at the same time
  	page = unchecked[rand(unchecked.length)]
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
	sendTo(params[:page],:sameSize)
	saveStatus()
end

post '/save/:page' do
	savePage(params[:page],params[:markdown])
	sendTo(params[:page],:goodPages)
	saveStatus()
end

get '/pages/:page' do
	editpage(params[:page]) if settings.infoStruct[:pages].include? params[:page]
end