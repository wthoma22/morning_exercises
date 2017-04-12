class AnimalReverse

  def initialize(animal)
   @animal = animal
  end

  def individual_letters
    @animal.split("").to_a
  end 
  
  def reverse_letters
    reverse_animal = individual_letters.map do |letter|
      letter.
  end 
end 


animal_1 = AnimalReverse.new('cow')
puts animal_1.reverse_letters