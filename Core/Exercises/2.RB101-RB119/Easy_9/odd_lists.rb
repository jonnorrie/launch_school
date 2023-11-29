# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

=begin
---Problem---
Input: An array 
Output: A selected array 
Rules: Explicit: Must return an array that is a list of values. Values of return must be in alternating index positions starting at 1st. 
Implicit: Must return same data types as input. 

---Data Strcutures---
Input: Array 
Output: Array 
Intermediate: None

---Algorithm---
High Level: Iterate through the input array and select alternating elements into a new array. Return new array. 
Step by Step:
1. Define a method that takes 1 arguement, an array.
  1. Iterate over the input array.
  2. Select criteria to be if element index is even. 
2. End method.
=end

def oddities(array)
  array.select.with_index { |el, index| index.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]