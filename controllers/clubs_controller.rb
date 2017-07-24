require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/player.rb' )

get '/clubs' do
  @clubs = Club.all()
  erb( :"clubs/index" )
end

get '/clubs/:id' do
  @club = Club.find(params[:id].to_i)
  @players = @club.players
  erb( :"clubs/show")
end
