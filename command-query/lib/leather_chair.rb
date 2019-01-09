class LeatherChair
  attr_reader :faded

  def initialize
    @faded = false
  end

  def expose_to_sunlight
    @faded = true
  end

  def faded?
    faded == true
  end
end
