# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

=begin
---Problem---
input - 3 integers
output - Symbol

-Rules-
Explicit
- input will always be three integers
- length of two smallest sides must be longer than the third side
Implicit
- All sides must be greater than 0
- lengths can be floats

---Data Structures---
input - integers
output - Symbol
intermediate - array

---Algorithm---
define a method that takes 3 integers
initialize a variable to an array of the three input integers

return invalid if any el are 0
return equilateral if int1 == int2 == int3 and none are 0
return isosceles if int1 == int1 or int1 == int3 or int2 == int3
else return scalene

=end

def triangle(int1, int2, int3)
  int1 = int1.to_f
  int2 = int2.to_f
  int3 = int3.to_f
  
    if int1 == 0 || int2 == 0 || int3 == 0
      return :invalid
    elsif int1 == int2 && int2 == int3
      return :equilateral
    elsif int1 == int2
      if (int1 + int2) > int3
        return :isosceles 
      else 
        return :invalid
      end
    elsif int1 == int3
      if (int1 + int3) > int2
        return :isosceles 
      else 
        return :invalid
      end
    elsif int2 == int3
      if (int2 + int3) > int1
        return :isosceles 
      else 
        return :invalid
      end
    else 
      return :scalene
    end
  
  end
  p triangle(3, 3, 3) == :equilateral
  p triangle(3, 3, 1.5) == :isosceles
  p triangle(3, 4, 5) == :scalene
  p triangle(0, 3, 3) == :invalid
  p triangle(3, 1, 1) == :invalid
  p triangle(4.5, 4, 8)
  p triangle(4, 4, 0.0) == :invalid