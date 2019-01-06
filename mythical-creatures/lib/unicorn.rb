class Unicorn
 attr_reader :name, :color
  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def white?
    if @color == "white"
      true
    else
      false
    end
  end

  def say(sparkly_stuff)
    "**;* #{sparkly_stuff} **;*"
  end
end
