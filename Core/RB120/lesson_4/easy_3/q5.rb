#If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

#What would happen if I called the methods like shown below?

tv = Television.new
tv.manufacturer # => MethodError
tv.model # => method logic

Television.manufacturer # => method logic
Television.model # => Method error