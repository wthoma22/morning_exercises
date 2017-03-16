numbers = [0, 1]

until numbers == 25
    sum = numbers [-1] + numbers [-2]
    numbers.push(sum)
end

puts #{sum}
