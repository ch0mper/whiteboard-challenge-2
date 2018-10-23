# Enter your object-oriented solution here!
require_relative './multiples.rb'

class Multiples

    attr_accessor :limit, :array

    def initialize(limit)
        @limit = limit
        @array = (1..limit-1).to_a
    end

    def collect_multiples
        new_array = @array.select do |num|
            num % 3 == 0 || num % 5 == 0
        end
    end

    def sum_multiples
        new_array = collect_multiples
        new_array.inject(0){|sum,x| sum + x }
    end

end