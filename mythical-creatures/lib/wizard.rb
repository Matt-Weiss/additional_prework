class Wizard
attr_accessor :name, :attributes
  def initialize(name, attribute_edit = {})
    @attribute_def = {bearded: true, rested: true, spell_slots: 3}
    @name = name
    @attributes = @attribute_def.merge(attribute_edit)
  end

  def bearded?
    @attributes[:bearded] == true
  end

  def incantation(ritual)
    "sudo #{ritual}"
  end

  def rested?
    @attributes[:rested] == true
  end

  def cast
    if @attributes[:spell_slots] == 0
      "Wizard is out of spell slots. They should rest."
    else
      @attributes[:spell_slots] -= 1
       if @attributes[:spell_slots] == 0
         @attributes[:rested] = false
       end
       "MAGIC MISSILE!"
    end
  end
end
