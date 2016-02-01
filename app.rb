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

get '/named-cat' do
  #p params
  @name = params[:name]
erb(:index)
end
