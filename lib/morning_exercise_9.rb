
  class Allergies

    attr_reader :score

    def initialize
      @score = score
    end

      ALLERGIES = {
                'eggs'         => 1,
                'peanuts'      => 2,
                'shellfish'    => 4,
                'strawberries' => 8,
                'tomatoes'     => 16,
                'chocolate'    => 32,
                'pollen'       => 64,
                'cats'         => 128,
              }

    def allergic_to?(item)
      @score & ALLERGIES[item] != 0
    end

    def allergy_list
      ALLERGIES.keys.select do |item|
        allergic_to?(item)
      end
    end

  end
