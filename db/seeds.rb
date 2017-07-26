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
  "fit" => 't',
  "nation" => 'Belgium',
  "photo_url" => "http://images.dailystar.co.uk/dynamic/58/photos/991000/620x/53f23d27bbe61_Marou.jpg",
  "club_id" => club7.id
  })

player2 = Player.new({
  "first_name" => "Lionel",
  "second_name" => "Messi",
  "position" => "Attacker",
  "age" => 30,
  "fit" => 't',
  "nation" => 'Argentina',
  "photo_url" => "http://cdn.images.express.co.uk/img/dynamic/67/590x/Barcelona-Lionel-Messi-779316.jpg",
  "club_id" => club2.id
  })

player3 = Player.new({
  "first_name" => "Philippe",
  "second_name" => "Coutinho",
  "position" => "Midfielder",
  "age" => 25,
  "fit" => 't',
  "nation" => 'Brazil',
  "photo_url" => "https://platform-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p84583.png",
  "club_id" => club1.id
  })

player4 = Player.new({
  "first_name" => "Ronaldinho",
  "second_name" => "Gaucho",
  "position" => "Attacker",
  "age" => 37,
  "fit" => 'f',
  "nation" => 'Brazil',
  "photo_url" => "https://upload.wikimedia.org/wikipedia/gd/e/e6/Ronaldinho01.jpg",
  "club_id" => club2.id
  })

player5 = Player.new({
  "first_name" => "Paul",
  "second_name" => "Pogba",
  "position" => "Midfielder",
  "age" => 23,
  "fit" => 't',
  "nation" => 'France',
  "photo_url" => "https://platform-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p74208.png",
  "club_id" => club3.id
  })

player6 = Player.new({
  "first_name" => "Gianluigi",
  "second_name" => "Donnarumma",
  "position" => "Goalkeeper",
  "age" => 18,
  "fit" => 't',
  "nation" => 'Italy',
  "photo_url" => "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Gianluigi_Donnarumma_%2831895135436%29.jpg/220px-Gianluigi_Donnarumma_%2831895135436%29.jpg",
  "club_id" => club6.id
  })

player7 = Player.new({
  "first_name" => "Leonardo",
  "second_name" => "Bonucci",
  "position" => "Defender",
  "age" => 31,
  "fit" => 't',
  "nation" => 'Italy',
  "photo_url" => "https://i.ytimg.com/vi/zsabyVAbueQ/hqdefault.jpg",
  "club_id" => club6.id
  })

player8 = Player.new({
  "first_name" => "Cristiano",
  "second_name" => "Ronaldo",
  "position" => "Attacker",
  "age" => 31,
  "fit" => 't',
  "nation" => 'Portugal',
  "photo_url" => "http://static.goal.com/4323400/4323432_news.jpg",
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

binding.pry


nil

