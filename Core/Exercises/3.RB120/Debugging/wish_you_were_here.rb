#On lines 39 and 40 of our code, we can see that grace and ada are located at the same coordinates. So why does line 41 output false? Fix the code to produce the expected output.

class Person
  attr_reader :name
  attr_accessor :location

  def initialize(name)
    @name = name
  end

  def teleport_to(latitude, longitude)
    @location = GeoLocation.new(latitude, longitude)
  end

  #def location
  #  "#{@location.latitude}, #{@location.longitude}"
  #end
end

class GeoLocation
  attr_reader :latitude, :longitude

  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def ==(other)
    latitude == other.latitude && longitude == other.longitude
  end

  def to_s
    "(#{latitude}, #{longitude})"
  end
end

# Example

ada = Person.new('Ada')
ada.location = GeoLocation.new(53.477, -2.236)

grace = Person.new('Grace')
grace.location = GeoLocation.new(-33.89, 151.277)

ada.teleport_to(-33.89, 151.277)

puts ada.location                   # (-33.89, 151.277)
puts grace.location                 # (-33.89, 151.277)
puts ada.location == grace.location # expected: true
                                    # actual: false

# Line 41 returns false becuase it is testing the equality of the objects, not the string being output by our to_s method in the GeoLocation method.
# to fix this, we add a method to our GeoLocation class that tests the equivalence of the longitude and latitude 2 GeoLocation objects