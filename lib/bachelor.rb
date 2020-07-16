require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do |key, value|
    if key["status"] == "Winner"
      name = key["name"]
    end 
  end
  name.split(" ")[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, info|
    info.each do |key, value|
      if key["occupation"] == occupation
        name = key["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, info|
    info.each do |key, value|
      if key["hometown"] == hometown
        counter = counter + 1
      end 
    end 
  end 
  counter 
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |key, value|
      if key["hometown"] == hometown 
        return key["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0 
  sum = 0 
  data[season].each do |key, value|
    sum += key["age"].to_i
    counter += 1
  end 
  sum / counter
      
end