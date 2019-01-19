class Medusa
  attr_reader :name
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(attacker)
    @statues << attacker
    attacker.turn_to_stone

    if @statues.count > 3
      @statues[0].unstone
      @statues.delete_at(0)
    end

  end

end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def turn_to_stone
    @stoned = true
  end

  def unstone
    @stoned = false
  end

end
