number = 0
sum = 0

100.times do |x|
    x += 1
    number = sum += x
end

puts "The square of all sums is #{number ** 2}"

sum_2 = 0

100.times do |x|
    y = (x + 1) ** 2
    sum_2 += y
end

puts "The sum of all squares is #{sum_2}"

puts "The differnece is #{number ** 2 - sum_2}"