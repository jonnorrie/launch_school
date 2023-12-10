=begin
  ---Problem---
input: 1 or more arguments
output: integer representation of arguements that return true when passed to block

---Examples---
count(1, 3, 6) { |value| value.odd? } == 2
count(1, 3, 6) { |value| value.even? } == 1
count(1, 3, 6) { |value| value > 6 } == 0
count(1, 3, 6) { |value| true } == 3
count() { |value| true } == 0
count(1, 3, 6) { |value| value - 6 } == 3

---Algorithm---
define a method that takes 1 or more arguments
initialize a counter variable to 0

iterate through array of arguments
  increment counter by 1 each time yield with argument returns true
end

return counter

=end

def count(*arguments)

  counter = 0

  arguments.each do |el|
    counter += 1 if yield(el)
  end
  counter

end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3