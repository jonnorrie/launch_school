=begin

---Problem---
write a program that determins whther a triganle is equilateral, isosceles or scalene

An equilateral triangle has all three sides the same length.

An isosceles triangle has exactly two sides of the same length.

A scalene triangle has all sides of different lengths.
need a triangle Class
need a kind instance method fro triangles
constructor method takes 3 integers as arguments

---Data Structures---

input - integers
output - string

---Algorithm---

define a triangle Class

  define  a constructor method that takes 3 integers



  initialize an instance variable `sides` to an array, and append each integer to the array
    raise ArgumentError if 
    max number in array is less than sum of remaining 
    or if any number is 0 or less

  end

  define a kind instance Method
    iterate through the `sides` Array with Index
      initialize a counter variable to 0
      break if index is greater than 0
      iterate through the `sides` array again with index
        initialize a counter variable to 0
        if the index1 is the same as index 2, skip
        if el 1 is the same as el 2, increment counter by 1 
        end
      end
    end

    if counter is 0, scalene
    if counter is 1, its isosceles
    if counter is 2, equilateral


  end
        


    
  end

end
=end

class Triangle

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    max = @sides.max

    # if @sides.sum - max > max
    #   raise
    # elsif @sides.any? { |el| el <= 0}
    #   raise
    # end
  end

  def kind
    @sides.each_with_index do |el1, index1|
      counter = 0
      break if index > 0
      @sides.each_with_index do |el2, index2|
        next if index1 == index2
        counter += 1 if el1 == el2
      end
    end

    case counter
    when 0
      "scalene"
    when 1
      "isosceles"
    when 2
      "equilateral"
    end




  end

end