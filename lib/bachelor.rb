require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num,contestants|
    if season_num == season
      contestants.each do |hash|
        if hash["status"] == "Winner"
          name = hash["name"].split(" ")
          #binding.pry
          return name[0] 
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_num,contestants|
    contestants.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  
  data.each do |season_num,contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end
  end
  
  return count
end

def get_occupation(data, hometown)
  arr = []
  
  data.each do |season_num,contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        arr << hash["occupation"]
      end
    end
  end
  
  return arr[0]
end

def get_average_age_for_season(data, season)
  sum = 0
  contestants_total = 0
  
  data.each do |season_num,contestants|
    if season_num == season
      contestants.each do |hash|
        sum += hash["age"].to_f
        contestants_total += 1
        #binding.pry
      end
    end
  end
  
  return (sum / contestants_total).round
end
