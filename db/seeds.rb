require('pry')
require_relative('../models/club')
require_relative('../models/player')

Player.delete_all()
Club.delete_all()

club1 = Club.new({
  "club_name" => "Liverpool FC"
  })

club2 = Club.new({
  "club_name" => "Barcelona"
  })

club3 = Club.new({
  "club_name" => "Manchester United"
  })

club4 = Club.new({
  "club_name" => "Manchester City"
  })

club5 = Club.new({
  "club_name" => "Dundee"
  })

club6 = Club.new({
  "club_name" => "AC Milan"
  })

club7 = Club.new({
  "club_name" => "Juventus"
  })

club8 = Club.new({
  "club_name" => "Real Madrid"
  })

club1.save
club2.save
club3.save
club4.save
club5.save
club6.save
club7.save
club8.save


player1 = Player.new({
  "first_name" => "Marouane",
  "second_name" => "Fellaini",
  "position" => "Midfielder",
  "age" => 29,
  "fit" => true,
  "club_id" => club7.id
  })

player2 = Player.new({
  "first_name" => "Lionel",
  "second_name" => "Messi",
  "position" => "Attacker",
  "age" => 30,
  "fit" => true,
  "club_id" => club2.id
  })

player3 = Player.new({
  "first_name" => "Philippe",
  "second_name" => "Coutinho",
  "position" => "Midfielder",
  "age" => 25,
  "fit" => true,
  "club_id" => club1.id
  })

player4 = Player.new({
  "first_name" => "Djibril",
  "second_name" => "Cisse",
  "position" => "Attacker",
  "age" => 35,
  "fit" => false,
  "club_id" => club1.id
  })

player5 = Player.new({
  "first_name" => "Paul",
  "second_name" => "Pogba",
  "position" => "Midfielder",
  "age" => 23,
  "fit" => true,
  "club_id" => club3.id
  })

player6 = Player.new({
  "first_name" => "Kyle",
  "second_name" => "Walker",
  "position" => "Defender",
  "age" => 24,
  "fit" => true,
  "club_id" => club4.id
  })

player7 = Player.new({
  "first_name" => "Leonardo",
  "second_name" => "Bonucci",
  "position" => "Defender",
  "age" => 31,
  "fit" => true,
  "club_id" => club6.id
  })

player8 = Player.new({
  "first_name" => "Cristiano",
  "second_name" => "Ronaldo",
  "position" => "Attacker",
  "age" => 31,
  "fit" => true,
  "club_id" => club8.id
  })

player1.save
player2.save
player3.save
player4.save
player5.save
player6.save
player7.save
player8.save

# binding.pry


nil

