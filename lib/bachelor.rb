def get_first_name_of_season_winner(data, season)
    data[season].each do |people|
        people.each do |k,v|
            if v = "winner"
                full_name = people["name"]
                return full_name.split(' ').first
                
                end
            end
        end
    end


        

def get_contestant_name(data, occupation) #a method that takes two arguments the hash "data" and a #string with the occupation
    #begin
    # gets a contestant's name
    #takes in a hash called data & the occupation
    #if the occupation matches a name
    #it returns the name of the constestant
    #end
    data.each do |season, array| #goes through the hash and goes to the level of each season and the #array
        array.each do |people| #goes to the level of the contestants names
            people.each do |k,v| #goes through each attribute and its value for each contestant
                if v == occupation # if the value of the occupation matches the string argument #given
                    return people["name"] #returns that contestant's name
                end
            end
        end
    end
end


def count_contestants_by_hometown(data, hometown)
  # returns the count when passed data
  counter = 0 #keep track of contestants from a particular hometown starts at 
       data.each do |season,array|
       array.each do |hash|
           hash.each do |k,v|
               if v == hometown
                   counter += 1
                   end
              end
          end
       end
     counter
end

def get_occupation(data, hometown)
  data.each do |season,array|
      array.each do |hash|
          hash.each do |k,v|
              if v == hometown
                  return hash["occupation"]
                  end
              end
          end
      end
end

def get_average_age_for_season(data, season)
  total = 0
  count = 0
  data[season].each do |hash|
   hash.each do |k,v|
       if k == "age"
           count += 1
           total += v.to_f
           end
       end
   end
 average = (total/count).round
  return average
end

