class Squares
    def initialize(num)
        @num = num
    end

    def square_of_sum()
        (1..@num).sum ** 2
    end

    def sum_of_squares()
        Array.new( (1..@num).map { | x | x ** 2} ).sum
    end

    def difference()
        square_of_sum() - sum_of_squares()
    end
end

module BookKeeping
    VERSION = 4
end