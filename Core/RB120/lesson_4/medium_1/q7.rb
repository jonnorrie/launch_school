#How could you change the method name below so that the method name is more clear and less repetitive?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def light_status # Change this method name to just `status`. Method calls will then look like this `my_light.status` instead of `my_light.light_status`
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end