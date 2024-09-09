=begin

---Problem---

write a program that generates randomaized names for robot objects
names cannot be duplicated
names must be random
name is given upon initialization
need a reset method for robot object
need a getter method for robot object name
need a list of names to verify duplicates
name format must be 2 letters and 3 numbers


---Data Structures---

input - robot object
output - robot object with random name

----Algorithm---

define a ROBOT class

    create a attr_getter for an instance variable name
    create a name_list class variable to an empty array

    define a constructor method 
        run private random_name method
    end
    
    define a reset method
        initialize an old_name variable to the current value of name instance variable
        run private random_name method
        remove old_name from name_list
    end
    
    define a private random_name method
        loop
            generate random name
                initialize a random_name variable to an empty stirng
                
                loop 5 times
                    if iteration is less han 3
                        choose random from range of a to z and append to empty string
                    else 
                        choose from range of a to z and append to empty string
                    end
                    
                
                
            break if random name is not in name_list
        end
        
        append random_name to name_list
        assign random_name to name instance variable
    end
end

---Code---
=end

class Robot
    
    attr_reader :name
    @@name_list = []
    
    
    def initialize
        random_name
    end
    
    def reset
        old_name = self.name
        
        random_name
        
        @@name_list.delete(old_name)
    end
    
    
    private

    def random_name
        
        random_name_string = ""
        
        loop do
            
            random_name_string = ""
            
            5.times do |it|
                if it < 2
                    random_name_string << ("A".."Z").to_a.sample
                else
                    random_name_string << ("0".."9").to_a.sample
                end
            end
            break if !@@name_list.include?(random_name_string)
        end
        
        p random_name_string
        
        @@name_list << random_name_string
        @name = random_name_string
        
    end
end