def square_array(array)
  array.map do |obj|
    obj * obj
  end
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map do |obj|
    obj.capitalize + "!"
  end
end

def long_planeteer_calls(planeteer_calls)
  if planeteer_calls.any? { |str| str.length > 4 }
    return true
  else
    planeteer_calls.all? { |str| str.length < 4 }
    return false
  end
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  planeteer_calls.find do |obj|
    valid_calls.include? obj    
  end
end
