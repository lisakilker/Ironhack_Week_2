require "sinatra"
require "sinatra/reloader"
require_relative "./lib/phrases.rb"

set :port, 3000

get "/" do
	@phrases = MyPhrases.new
	erb :index
end

post "/" do
	tempfile = params[:file]
	"Uploaded tempfile" #{tempfile.inspect}
end

get '/file' do
	erb :upload_file
end
	
post "/initialize_phrases" do
	tempfile = params[:file][:tempfile].read
	@tmp = MyPhrases.new(tempfile)
	erb :upload_file
	puts "My phrase is #{params}"
	
end

# post "/say_my_name" do
# 	puts params
# 	"My phrases is #{params}"
# end