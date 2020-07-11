# Only on macOS

VOICES = %w[Alex Daniel Fiona Fred Karen Moira Tessa Veena Victoria Kyoko Zarvox Thomas]

def say_hi_to_user(name)
  `say -v #{VOICES.sample} "Welcome to Fish Frenzy, #{name}. Choose a location to go fishing"`
end

def say_location(loc_id)
  case loc_id
  when 1
    loc_name = 'Crystal Lake'
  when 2
    loc_name = 'Salt Water Swamp'
  when 3
    loc_name = 'Open Ocean'
  when 4
    loc_name = 'Murky Meadows'
  end
  `say -v #{VOICES.sample} "You have chosen #{loc_name}. Good Luck!"`
end

def thanks_for_playing
  `say -v #{VOICES.sample} "Thank you for playing, FISH FRENZY."`
end

def random_quote
  sntc = Quote.find(Quote.pluck(:id).sample).sentence
  puts sntc
  `say -v #{VOICES.sample} "#{sntc}"`
end

def quiz_time
  `say -v #{VOICES.sample} "It's quiz time."`
end

def good_luck
  `say -v #{VOICES.sample} "Good Luck!!!"`
end
