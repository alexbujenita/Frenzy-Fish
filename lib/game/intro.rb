def greeting
  # system("artii", "'Fish Frenzy'", "--font slant")
  a = Artii::Base.new :font => 'slant'
  puts a.asciify('Fish Frenzy')
  sleep 0.1
  'Copyleft 2019'
end

def login
  puts "Enter a username:"
  gets.strip
end

def create_user
  user_input = login.downcase.capitalize
  User.create(username: user_input)
end

def main_menu
  prompt = TTY::Prompt.new
  prompt.select('Select an Option') do |menu|
    menu.choice name: 'PLAY GAME!', value: 1
    menu.choice name: 'Rules', value: 2
    menu.choice name: 'Leaderboards', value: 3
    menu.choice name: 'Fish Types', value: 5
    menu.choice name: 'Locations', value: 6
    menu.choice name: 'Fish Quiz', value: 7
    menu.choice name: 'Quit Game', value: 4
  end
end

def fishing_menu_when_fish_caught
  fish_menu = TTY::Prompt.new
  fish_menu.select('What do you want to do with this fish?') do |menu|
    menu.choice name: 'Keep the fish', value: 1
    menu.choice name: 'Throw it back in the water', value: 2
  end
end

def game_over
  thx = Artii::Base.new
  puts thx.asciify("Thank you for playing")
  puts greeting
end


def location_menu
  prompt = TTY::Prompt.new
  prompt.select('') do |menu|
    menu.choice name: 'Crystal Lake', value: 1
    menu.choice name: 'Salt Water Swamp', value: 2
    menu.choice name: 'Open Ocean', value: 3
    menu.choice name: 'Murky Meadows', value: 4
  end
end
