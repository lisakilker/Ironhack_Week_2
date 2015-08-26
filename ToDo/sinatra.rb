require "sinatra"
require "sinatra/reloader"
require "pry"

set :port, 3005

enable :sessions

task_manager = TaskManager.new

task = ["Make your bed",
"Brush your teeth",
"Do the dishes"]

get '/:task' do
@task = params[:task]
erb :sinatra
end

post '/' do
  @task =  params[:task]
  redirect to("/")
end

get '/:task' do
  session[:task] = params[:task]
end

get '/' do
  "task = " + session[:task]
end

