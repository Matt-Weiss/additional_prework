class Ferret
  attr_reader :name

  def initialize
  end

  def name
    if @name == nil
      "a ferret has no name"
    else
      "a ferret's name is #{@name}"
    end
  end

  def give_name(name)
    @name = name
  end
end
