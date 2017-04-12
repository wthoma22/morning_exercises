class Fibonacci

    def nth_fibonacci
    (1..num).inject([0, 1]) do |fib|
    fib << fib.last(2).inject(:+)
    end.last
    
end

nth_fibonacci 25
