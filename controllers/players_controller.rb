require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/club.rb' )
require('pry')

get '/players' do
  @players = Player.all()
  erb ( :"players/index" )
end

get '/players/new' do
  @clubs = Club.all()
  erb(:"players/new")
end

get '/players/:id' do
  @player = Player.find(params[:id].to_i)
  erb(:"players/show")
end

post '/players' do
  player = Player.new(params)
  player.save
  redirect to("/players")
end

post '/players/:id/delete' do
  Player.destroy(params[:id])
  redirect to("/players")
end

get '/players/:id/edit' do
  @player = Player.find(params[:id])
  @clubs = Club.all
  erb(:"/players/edit")
end

post '/players/:id' do
  player = Player.new(params)
  player.update
  redirect to("/players")
end


