require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative('controllers/clubs_controller')
require_relative('controllers/players_controller')

get '/players' do
  @players = Player.all()
  erb( :index )
end

