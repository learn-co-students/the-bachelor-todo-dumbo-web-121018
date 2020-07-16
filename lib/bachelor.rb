require 'pry'
def get_first_name_of_season_winner(data, season)
  winner_1st_name = nil
  data[season].map do |array|
    if array["status"] == "Winner"
      winner_1st_name = array["name"].split(" ").first
    end
  end
  winner_1st_name
end

def get_contestant_name(data, occupation)
  contestant = nil
  data.each do |season,array| 
    array.each do |info| 
      
      if occupation == info["occupation"] 
        contestant = info["name"] 
      end
    end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  num_from_town = []
  data.each do |season, array|
    array.each do |info|
      if hometown == info["hometown"]
        num_from_town << info["name"]
      end
    end
  end
  num_from_town.size
end

def get_occupation(data, hometown)
  town_jobs = []
  data.each do |season, array|
    array.each do |info|
      if hometown == info["hometown"]
        town_jobs << info["occupation"]
      end
    end
  end
  town_jobs.first
end

def get_average_age_for_season(data, season)
  ages = data[season].map {|array| array["age"].to_f}
  ((ages.inject(:+)) / ages.size).round
end
