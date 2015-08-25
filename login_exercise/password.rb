require "sinatra"
require "sinatra/reloader"
require "pry"

set :port, 3003

enable :sessions

user_data = {
	"Lisa" => "donuts"
}

get '/session' do
	erb :password
end

post '/login' do
	@username = params[:username]
	@password = params[:password]
	erb :password
end