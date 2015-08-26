require "sinatra"
require "pry"
require_relative "lib/task.rb"
require_relative "lib/task_manager.rb"

task_manager = TaskManager.new

get "/" do
  @tasks = task_manager.get_tasks
  erb :index
end

post "/remove_task/:task_id" do
  task_id = params[:task_id].to_i
  task_manager.remove_task(task_id)
  redirect to("/")
end

get "/tasks/new" do
  erb :new
end

post "/tasks" do
  content = params[:task]
  task = Task.new(content)
  task_manager.add_task(task)

  redirect to("/")
end
