# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min
#---------------------------

ages_values = ages.values

min_age = nil

counter = 0

loop do
  if min_age == nil
    min_age = ages_values[0]
    counter += 1
  elsif counter >= ages_values.length
    break
  else
    min_age = ages_values[counter] if ages_values[counter] < min_age
    counter += 1
  end
end

p min_age
