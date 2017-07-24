require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/player.rb' )

get '/clubs' do
  @clubs = Club.all()
  erb ( :"clubs/index" )
end