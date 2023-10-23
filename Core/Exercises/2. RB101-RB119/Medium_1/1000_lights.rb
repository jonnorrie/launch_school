# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9]. 

=begin
---Problem---
- Input: An integer
- Output: An array of integers
- Rules
  - Explicit
    - Must return an array
    - Array must contain integers
    - Integers in return array must reflect the lights that are left ON after repetitions
  - Implicit
- Mental Model: A data structure will need to be created dependent on given integer, and store the status of each light. 

---Examples---
Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

---Data Structures---
- Input: Integer
- Output: An array of integers
- Intermediate: A hash to store the on/off status of each light

---Algorithm---
1. Define a method that takes one argument, expected to be an integer. 
2. Create a new hash that is the size of the passed argument. 
  2a. Each key should be a number, starting at 1, and each value should be set to 'off'.
3. Iterate over the hash using the times method, using the argument as the caller. 
  3a. start on num equal to iteration, and turn on/off numbers that are multiples of iteration
4. select elements in hash that are set to true, and return array

=end


def toggle(integer)
  hash = {}
  
  integer.times do |it|
    it += 1
    hash[it] = false
  end
  
  integer.times do |it|
    it += 1
    hash.each {|key, value| hash[key] = !value if  key % it == 0}
  end
      
  p hash.select { |k, v| v == true }.keys
  end
  
  toggle(1000)