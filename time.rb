require "sinatra"
require "sinatra/reloader"
require "time"
require "pry"

set :port, 3000

get '/time/before/ :hour' do
	hour_num = params[:hour].to_i
	seconds_ago = hour_num * 60 * 60
	time = Time.now - seconds_ago
	@formatted_time = time.strftime("%H:%M:%S")
  erb :time
end