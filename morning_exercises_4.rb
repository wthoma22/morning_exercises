class AnimalReverse

  def initialize(animal)
   @animal = animal
  end

  def individual_letters
    animal.split("")
  end 
  
  def reverse_letters
    individual_letters[0..2 = individual_letters[2..0]]
  end 
end 


animal_1 = AnimalReverse.new('cow')