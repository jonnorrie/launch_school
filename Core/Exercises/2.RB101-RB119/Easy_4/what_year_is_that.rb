def century(year)
  century = (year - 1) / 100 + 1
  century = century.to_s


  if century.end_with?("11", "12", "13")
    century << "th"
  elsif century.end_with?("1")
    century << "st"
  elsif century.end_with?("2")
    century << "nd"
  elsif century.end_with?("3")
    century << "rd"
  else
    century << "th"
  end
  
  puts century
end



century(99)