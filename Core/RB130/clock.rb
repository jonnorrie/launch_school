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
        
        
        subtract 60 from input until less than 60, then add minutes element from existing clock to `minutes`
        
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

class Clock
    

    
    def self.at(at_hours, at_minutes = 0)
        Clock.new(at_hours, at_minutes)
    end
    
    def to_s
        show_time
    end
    
    def +(added_minutes)
        hours = self.time[0].to_i
        minutes = self.time[1].to_i
        
        if added_minutes > 60
            added_hours = added_minutes/60
            loop do
               added_hours -= 24
               break if added_hours
               hours += added_hours
            end
        end
        
        hour_counter = 0
        
        loop do
            break if added_minutes < 60
            added_minutes -= 60
            hour_counter += 1
        end
        
        minutes += added_minutes
        hours += hour_counter
        
        Clock.new(hours, minutes)
            
        
    end
    
    def -(subtracted_minutes)
       
        hours = self.time[0].to_i
        minutes = self.time[1].to_i
        
        if subtracted time > 60
            
            
            
    end
    
    private
    
    attr_reader :time
    
    def initialize(hour, minute)
        @time = []
        
        if hour > 24
            loop do
            hour = hour - 24
            break if hour <= 24
        end
            
        elsif hour < 0
            loop do
                hour = hour + 24
                break if hour >= 0
            end
        end
        
        
        counter = 0
        if minute > 60
            loop do
                minute = minute - 60
                counter += 1
                break if minute < 60
            end
        end
        hour += counter
        hour = 0 if hour == 24
            
        
        @time << hour.to_s
        
        @time << minute.to_s
        
        @time.each do |el|
            el.prepend("0") if el.length == 1 
        end
    end
    
    def show_time
        
        @time.join(":") 
    end
    
    
end