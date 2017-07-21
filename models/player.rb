require_relative( '../db/sql_runner' )
require_relative('./club')

class Player

attr_reader :first_name, :second_name, :age, :fit, :club_id

  def initialize(options)
    @first_name = options['first_name']
    @second_name = options['second_name']
    @age = options['age'].to_i
    @fit = options['fit']
    @club_id = options['club_id']
    @id = options['id'].to_i if options['id']
  end

  def save()
    sql = "INSERT INTO players (first_name, second_name, age, fit, club_id) VALUES ('#{@first_name}', '#{@second_name}', #{@age}, #{@fit}, #{@club_id}) RETURNING id;"
    player = SqlRunner.run(sql)
    @id = player[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM players;"
    players = SqlRunner.map{ |player| Player.new( player )}
  end

  def self.delete()
    sql = "DELETE FROM players;"
    return SqlRunner.run(sql)
  end


end