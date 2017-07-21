require_relative( '../db/sql_runner' )

class Club

attr_reader :club_name, :id

  def initialize(options)
    @club_name = options['name']
    @id = options['id'].to_i if options['id']
  end  

  def save()
    sql = "INSERT INTO clubs (club_name) VALUES ('#{@club_name}') RETURNING id;"
    club = SqlRunner.run(sql)
    @id = club[0]['id'].to_i
  end

end