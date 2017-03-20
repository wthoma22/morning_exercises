class LeapYear

def leap_year
    if num (starting % 4) == 0
           (starting != 100)
           (starting % 400) == 0
        puts "Leap Year!"
    else 
      puts "Not a leap year!"
  end
end 

    def year
    25.times do 
      leap_year(year)
      puts year
      year += 1  
    end
end

LeapYear.new