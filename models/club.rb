require_relative( '../db/sql_runner' )

class Club

attr_reader :club_name, :id

  def initialize(options)
    @club_name = options['club_name']
    @id = options['id'].to_i if options['id']
  end  

  def save()
    sql = "INSERT INTO clubs (club_name) VALUES ('#{@club_name}') RETURNING id;"
    club = SqlRunner.run(sql)
    @id = club[0]['id'].to_i
  end

  def update()
    sql = "UPDATE clubs SET (club_name) = ('#{@club_name}') WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def players
    sql = "SELECT * FROM players WHERE club_id = #{@id};"
    players = SqlRunner.run(sql)
    return players.map { |player| Player.new(player)}
  end
  
  def self.all()
    sql = "SELECT * FROM clubs;"
    clubs = SqlRunner.run(sql)
    return clubs.map { |club| Club.new( club )}
  end

  def self.find(id)
    sql = "SELECT * FROM clubs WHERE id = #{id}"
    club = SqlRunner.run(sql)
    return Club.new(club[0])
  end

  def self.delete_all()
    sql = "DELETE FROM clubs;"
    return SqlRunner.run(sql)
  end

  def self.destroy(id)
    sql = "DELETE FROM clubs 
    WHERE id = #{id};"
    SqlRunner.run( sql )
  end

end