class Sieve

  def initialize (max)
    @max = max
  end

  def primes
    return [] if @max < 2
    sieve_array = Array.new(@max, true)
    (2..Math.sqrt(@max)).each do |n|
      next if sieve_array[n] == false
      x = n**2
      while x < @max do
        j = 0
        while x + n * j < @max do
          sieve_array[x + n * j] = false
          j += 1
        end
      end
    end
    prime_nums = Array.new
    (2..@max).each { |i| prime_nums.push(i) if sieve_array == true}
  end
end

module BookKeeping
  VERSION = 1
end