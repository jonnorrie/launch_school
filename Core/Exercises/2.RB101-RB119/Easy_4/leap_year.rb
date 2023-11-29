# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else year % 4 == 0
#   end
# end

def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true #true
p leap_year?(2015) == false #true
p leap_year?(2100) == false #true
p leap_year?(2400) == true #false
p leap_year?(240000) == true #false
p leap_year?(240001) == false #true
p leap_year?(2000) == true #false
p leap_year?(1900) == false #true
p leap_year?(1752) == true #true
p leap_year?(1700) == false #true
p leap_year?(1) == false #true
p leap_year?(100) == false #true
p leap_year?(400) == true #false
