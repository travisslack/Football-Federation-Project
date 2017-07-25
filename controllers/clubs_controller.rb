require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/player.rb' )

get '/clubs' do
  @clubs = Club.all()
  erb( :"clubs/index" )
end

get '/clubs/new' do 
  @clubs = Club.all()
  erb(:"clubs/new")
end

get '/clubs/:id' do
  @club = Club.find(params[:id].to_i)
  @players = @club.players
  erb(:"clubs/show")
end

post '/clubs' do 
  club = Club.new(params)
  club.save
  redirect to("/clubs")
end

post '/clubs/:id/delete' do 
  Club.destroy(params[:id])
  redirect to("/clubs")
end

get '/clubs/:id/edit' do
  @clubs = Club.all
  erb(:"/clubs/edit")
end

post '/clubs/:id' do
  club = Club.new(params)
  club.update
  redirect to("/clubs")
end



