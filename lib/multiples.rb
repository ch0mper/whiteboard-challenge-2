# Enter your procedural solution here!

def collect_multiples(limit)
    array = (1..limit-1).to_a
    new_array = array.select do |num|
        num % 3 == 0 || num % 5 == 0
    end
end

def sum_multiples(limit)
    new_array = collect_multiples(limit)
    new_array.inject(0){|sum,x| sum + x }
end