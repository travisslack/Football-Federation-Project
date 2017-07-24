require_relative( '../db/sql_runner' )
require_relative('./club')

class Player

attr_accessor :first_name, :second_name, :age, :fit, :club_id, :position

attr_reader :id

  def initialize(options)
    @first_name = options['first_name']
    @second_name = options['second_name']
    @position = options['position']
    @age = options['age'].to_i
    @fit = options['fit']
    @club_id = options['club_id'].to_i
    @id = options['id'].to_i if options['id']
  end

  def save()
    sql = "INSERT INTO players (first_name, second_name, position, age, fit, club_id) VALUES ('#{@first_name}', '#{@second_name}', '#{@position}', #{@age}, '#{@fit}', #{@club_id}) RETURNING id;"
    player = SqlRunner.run(sql)
    @id = player[0]['id'].to_i
  end

  def update()
    binding.pry
    sql = "UPDATE players SET (first_name, second_name, position, age, fit, club_id) VALUES ('#{@first_name}', '#{@second_name}', '#{@position}', #{@age}, '#{@fit}', #{@club_id}) WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM players;"
    players = SqlRunner.run(sql)
    return players.map{ |player| Player.new(player)}
  end

  def self.find(id)
    sql = "SELECT * FROM players WHERE id = #{id}"
    player = SqlRunner.run(sql)
    return Player.new(player[0])
  end

  def find_club()
    return Club.find(@club_id)
  end

  def self.delete_all()
    sql = "DELETE FROM players;"
    SqlRunner.run(sql)
  end

  def self.destroy(id)
    sql = "DELETE FROM players 
    WHERE id = #{id};"
    SqlRunner.run( sql )
  end


end