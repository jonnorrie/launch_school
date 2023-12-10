=begin
---Problem---
write a method that takes an array as an argument, 
and yields the array to a block where it assigns all elements but the first 2
to an array referenced by a raptor variable

---Algorithm---
define a method that takes an array as an argument

yield array to a block

assign three block parameters in method implementation, with the last using the * splat operator

  
=end



def method(array)
  yield(array)
end

method(['crow', 'finch', 'hawk', 'eagle']) do |first, second, *raptors|
  puts "Raptors: #{raptors}"
end