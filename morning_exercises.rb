class SquaredSum

    def sum_of_all_squares

        numbers = [1..100]
        num_1 = numbers.map do |number|
        number.sum
        end

    end

    puts "The square of all sums is #{num_1**2}"

    def square_of_all_sums

        numbers = [1..100]
        num_2 = numbers.map do |number|
        number**2.sum
        end
    end

    puts "The sum of all squares is #{num_2}"

    puts "The difference is #{num_1**2 - num_2}"

end