# Determine the total age of just the male members of the family.

# input: hash
# output: integer

# rules: add up ages of only male members

# initialize an age variable
# iterate through munsters hash
  # if 'gender' of current member is male, add age of current member to age variable
# return age variable

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

age = 0
keys = munsters.keys
counter = 0

loop do
  if counter >= munsters.length
    break
  elsif munsters[keys[counter]]["gender"] == "male"
    age += munsters[keys[counter]]["age"]
  end

  counter += 1
end

p age 