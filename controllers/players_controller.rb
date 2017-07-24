require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/club.rb' )

get '/players' do
  @players = Player.all()
  erb ( :"players/index" )
end

get '/players/new' do
  erb(:"players/new")
end