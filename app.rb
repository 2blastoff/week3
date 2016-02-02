require 'sinatra'
get '/choose' do
  "Hello World"
end

get '/secret' do
  "this is an secret message"
end

get '/random-cat' do
  @name = ["James","Peter","tom"].sample
erb(:index)
end

post '/named-cat' do
  @name = params[:name]
erb(:index)
end

get '/cat-form' do
  erb (:cat_form)
end
