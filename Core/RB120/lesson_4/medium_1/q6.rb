#If we have these two methods in the Computer class:

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template # This references the getter method for `@template` on the same instance of the `Computer` class that we call the `show_template` method on.
  end
end

# and

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    self.template # This is the exact same, but is being explicit about which instance of the `Computer` class we want to call the template getter method on. Both methods act the same
  end
end

#What is the difference in the way the code works?