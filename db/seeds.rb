require_relative('../models/club')
require_relative('../models/player')

Player.delete()
Club.delete()
club1 = Club.new({
  "club_name" => "Liverpool"
  })

club2 = Club.new({
  "club_name" => "Chelsea"
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

club1.save
club2.save
club3.save
club4.save
club5.save
club6.save


player1 = Player.new({
  "first_name" => "Paulo",
  "second_name" => "Dybala",
  "age" => 23,
  "fit" => true,
  "club_id" => club1.id
  })

player2 = Player.new({
  "first_name" => "Lionel",
  "second_name" => "Messi",
  "age" => 30,
  "fit" => true,
  "club_id" => club2.id
  })

player3 = Player.new({
  "first_name" => "Philippe",
  "second_name" => "Coutinho",
  "age" => 25,
  "fit" => true,
  "club_id" => club3.id
  })

player4 = Player.new({
  "first_name" => "Djibril",
  "second_name" => "Cisse",
  "age" => 35,
  "fit" => false,
  "club_id" => club4.id
  })

player1.save
player2.save
player3.save
player4.save