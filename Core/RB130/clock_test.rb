require 'minitest/autorun'
require_relative 'clock'

class ClockTest < Minitest::Test
  def test_on_the_hour
    assert_equal '08:00', Clock.at(8).to_s
    assert_equal '09:00', Clock.at(9).to_s
  end

  def test_past_the_hour
    assert_equal '11:09', Clock.at(11, 9).to_s
  end

  def test_add_a_few_minutes
    clock = Clock.at(10) + 3
    assert_equal '10:03', clock.to_s
  end

  def test_adding_does_not_mutate
    old_clock = Clock.at(10)
    new_clock = old_clock + 3
    refute_same new_clock, old_clock
  end

  def test_subtract_fifty_minutes
    clock = Clock.at(0) - 50
    assert_equal '23:10', clock.to_s
  end

  def test_subtracting_does_not_mutate
    skip
    old_clock = Clock.at(10)
    new_clock = old_clock - 50
    refute_same new_clock, old_clock
  end

  def test_add_over_an_hour
    skip
    clock = Clock.at(10) + 61
    assert_equal '11:01', clock.to_s
  end

  def test_wrap_around_at_midnight
    skip
    clock = Clock.at(23, 30) + 60
    assert_equal '00:30', clock.to_s
  end

  def test_add_more_than_a_day
    skip
    clock = Clock.at(10) + 3061
    assert_equal '13:01', clock.to_s
  end

  def test_subtract_a_few_minutes
    skip
    clock = Clock.at(10, 30) - 5
    assert_equal '10:25', clock.to_s
  end

  def test_subtract_minutes
    skip
    clock = Clock.at(10) - 90
    assert_equal '08:30', clock.to_s
  end

  def test_wrap_around_at_negative_midnight
    skip
    clock = Clock.at(0, 30) - 60
    assert_equal '23:30', clock.to_s
  end

  def test_subtract_more_than_a_day
    skip
    clock = Clock.at(10) - 3061
    assert_equal '06:59', clock.to_s
  end

  def test_equivalent_clocks
    skip
    clock1 = Clock.at(15, 37)
    clock2 = Clock.at(15, 37)
    assert_equal clock1, clock2
  end

  def test_inequivalent_clocks
    skip
    clock1 = Clock.at(15, 37)
    clock2 = Clock.at(15, 36)
    clock3 = Clock.at(14, 37)
    refute_equal clock1, clock2
    refute_equal clock1, clock3
  end

  def test_wrap_around_backwards
    skip
    clock1 = Clock.at(0, 30) - 60
    clock2 = Clock.at(23, 30)
    assert_equal clock1, clock2
  end
end

=begin

---Problem---
create a clock that is independant of date
clock objects need hours and minutes as arguments when instantiating
clock objects need add + and subtract - methods, add or sub by minutes.
adding or subtracting should create a new clock object, not mutate the existing object
two clock objects with the same time must be equal to eachother
clock objects require an = comparison method
time is given in 24 hour format as a string
to_s method needed for clock object, output is time
must be able to handle adding or subtracting more than a days worth of minutes

---Data Structures---
input: integer(s)
output: string

---Algorithm---

define a clock class

create a getter for time attribute

    
    define an `at` class method
        instantiate a new clock object
        return clocks time
    end
    
    define a `+` instance method that takes an integer as an argument in minutes
    
    initialize local variable `hours` to the hours of existing clock
    initialize local variable 'minutes' to the minutes of existing clock
    
        
        if input is greater than 60
            divide input by 60, and subtract 24 from whole number until less than or equal to 24 and save to input_hours variable
            reassign `hours` to `hours` + input_hours
        end
        
        initialize a counter variable to 0
        
        subtract 60 from input until less than 60 and add to counter each time it is done, then add minutes element from existing clock to `minutes`
        add counter to hours
        
        instantiate a new clock object with `hours` and `minutes` as arguments
        return new clock object
        
    end
    
    define a '-' instance method
    
        initialize local variable `hours` to the hours of existing clock
        initialize local variable `minutes` to the minutes of existing clock
        
        if input is greater than 60
            divide input by 60, and subtract 24 from whole number until less than or equal to 24 and save to input_hours variable
            reassign `hours` to `hours` - input_hours
        end
            
        subtract 60 from input until less than 60, then subtract minutes element from existing clock to `minutes`
        if `minutes` are now less than 0, add 60 to minutes, and subtract 1 to `hours` for each time 60 is added
    
    
    
    end
    
    define a to_s method
        return clocks time attribute
    end
    
    
    private
    
    
    define a private constructor method that takes two integers as arguments
        instantiate an empty array to a `time` instance variable
        
        if the hours are greater than 24
            subtract hours by 24 until answer is less than 24
        else if hours are less than 0
            add 24 until answer is greater than or equal to 0
        end
        append hours to first element in time as a string
        
        if minutes are greater than 60
            subtract 60 from minutes unitl answer is less than 60
        end
        append minutes to second element in time as a string
        
        iterate through `time`
            if integer is a single digit, prepend a 0 before it
        end
        
        assign `time` instance variable to joined array with : between
    end
    
    
---Code---
=end