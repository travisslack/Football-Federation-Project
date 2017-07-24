require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative('models/player.rb')
require_relative('models/club.rb')

get '/players' do
  @players = Player.all()
  erb( :index )
end

get '/players/new' do
  @clubs = Club.all()
  erb(:new)
end 

post '/players' do
  @player = Player.new(params)
  @player.save
  erb( :create )
end 


