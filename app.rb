class App < Sinatra::Base
require 'sinatra'

get '/' do
  erb :index
end

get '/about' do
	"This is the about page"
end

get '/hello/:name' do 
	name=params[:name];
	"Hey there, #{name}."
end
get '/form' do
	erb :form
end

get '/send' do
	erb :send
end
post '/form' do
	"I see you added your last name Mr. #{params[:message]}"
end

["/foo", "/bar", "/baz"].each do |path|
  get path do
    "You've reached me at #{request.path_info}"
  end
end
end