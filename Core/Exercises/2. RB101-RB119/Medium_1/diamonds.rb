=begin

---Problem---
- Input: An odd integer
- Output: A pattern of * in a diamond shape
- Rules: 
  - Explicit
    - Shape must be 4 pointed.
    - Given integer will always be odd
  - Implicit
    - Lines must only have odd number of stars. 
    - First line will always be one star.
    - Final line will always be one star.
    - Middle point will have the argument number of stars. 

---Data Structures---
- Input: Integer
- Output: Multiple strings
- Intermediate: N/A

---Algorithm---
1. Define a method that takes an integer argument.
2. Iterate through range from 1 to num
  2a. Create an empty string
  2b. If Iteration within range is an odd number, append that number of stars to the string and output and center string
  2c. End iteration. 
3. Iterate through a range from (num - 1) to 1. 
  3a. Create an empty string
  3b. If Iteration within range is an odd number, append that number of stars to the string.
  3c. Output using puts and the center method passing orig. argument as argument. 
  3d. End iteration. 
4. End method
=end

def diamond(int)
  (1..int).each do |num|
    string = ''
    if num.odd?
      string << ("*" * num)
      puts string.center(int)
    end
  end
  
  ((int-1).downto(1)).each do |num|
    second_string = ''
    if num.odd?
      second_string << ("*" * num)
      puts second_string.center(int)
    end
  end
end

diamond(9)