
=begin
---Problem---
input: string of instructions
output: string representation of an integer as directed by print instruction. 
-Explicit - 
- Method must take a string argument. 
- Method must return based upon the argument. 
-Implicit-
- Any output must be an integer (or a string representation of a integer)
- Register default value is 0
- Without print instruction, nothing to be output. 
- No meaningful return value

---Data Structures---
Input: String 
Output: String
Intermediate: Array, register variable storing an integer.

---Algorithm---
1. Define a method that takes one argument, exp to be a String.
2. Intialize a variable (register) and assign it to the value of 0. 
3. Intialize a variable (stack) and assign to an empty array. 
4. Initialize a variable (input_string) and set to the return value of calling the split method on the input string argument. 
5. Iterate over the input_string variable using each. 
  5a. Declare a case to be the element at each iteration. 
  5b. When case is a number reassign the register variable to element. 
  5c. When case is respective command perform command on element. 
6. End the case statement. 
7. End the method. 
=end

require = "pry"

def minilang(string)
  register = 0
  stack = []
  array = string.split

  if array.include?("PRINT") == false
    puts "nothing printed, no PRINT commands"
    return 0
  end

  array.each do |command|
    if command.to_i.to_s == command 
      register = command.to_i
    elsif command == "PUSH"
      stack << register
    elsif command == "ADD"
      register += stack.pop
    elsif command == "SUB"
      register -= stack.pop
    elsif command == "MULT"
      register *= stack.pop
    elsif command == "DIV"
      register /= (stack.pop)
    elsif command == "MOD"
      register %= (stack.pop)
    elsif command == "POP"
      register = stack.pop
    elsif command == "PRINT"
      puts register
    end
  end
end

# minilang('PRINT')
# 0

# minilang('5 PUSH 3 MULT PRINT')
# 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

# # (3 + (4 * 5) - 7) / (5 % 3)

minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')