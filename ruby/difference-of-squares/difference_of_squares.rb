class Squares
    def initialize(num)
        @num = num
    end

    def square_of_sum()
        (1..@num).sum ** 2
    end

    def sum_of_squares()
        sum = 0
        (1..@num).each { |x| sum += x ** 2}
        sum

        # below is a cool one-liner but is more costly
        # since you're making an array for no reason
        # Array.new( (1..@num).map { | x | x ** 2} ).sum
    end

    def difference()
        square_of_sum() - sum_of_squares()
    end
end

module BookKeeping
    VERSION = 4
end