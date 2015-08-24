require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "./lib/filecounter.rb"

get "/" do
	erb :index
end

post "/" do
	tempfile = params[:file]
	"Uploaded tempfile" #{tempfile.inspect}
end

get '/file' do
	erb :upload_file
end
	
post "/count_words" do
	tempfile = params[:file][:tempfile].read
	@tmp = FileCounter.new(tempfile)
	erb :upload_file
	# redirect to ("/upload_file")
end

post "/say_my_name" do
	puts params
	"Hello #{params['my_name']}"
end