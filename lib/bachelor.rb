def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    if person["status"] == "Winner" # reason why it didn't work for me before is because i used symbol ":" instead of ""
      return person["name"].split.first
    end
  end
  # data[season.to_sym].each do |person| #person is now the only ones from season
  #   person.each do |key, value| #diff keys and their values
  #     if person[key] == "Winner"
  #       return person[:name].split.first
  #     end
  #   end
  # end # this works too buy only on repl
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, arr|
    arr.each do |job|
      if job["occupation"] == occupation
        return job["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  num = 0
  data.each do |season, people|
    people.each do |home|
      if home["hometown"] == hometown
        num += 1
      end
    end
  end
  return num
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, people|
    people.each do |occupation|
      if occupation["hometown"] == hometown
        return occupation["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  avg = 0
  data[season].each do |person|
    avg += person["age"].to_f
  end
  return (avg / data[season].size).round
end
