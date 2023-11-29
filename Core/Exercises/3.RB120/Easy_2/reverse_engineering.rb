class Transform
  attr_accessor :string

  def initialize(string1)
    @string = string1
  end

  def uppercase
    @string.upcase
  end

  def self.lowercase(string2)
    string2.downcase
  end
end
my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')