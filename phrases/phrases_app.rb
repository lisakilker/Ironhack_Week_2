require "sinatra"
require "sinatra/reloader"
require "pry"

phrases = [
  "My first phrase",
  "Carpe diem",
  "Another phrase to complete"
]

get "/" do
  @phrase = phrases.sample
  @phrases = phrases
  erb :index
end

post "/delete_phrase" do
  index_to_remove = params[:phrase_index].to_i
  phrases.delete_at(index_to_remove)
  # some comment
  redirect to("/")
end
