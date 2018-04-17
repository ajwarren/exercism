class Sieve

  def initialize (max)
    @max = max
  end

  def primes
    return [] if @max < 2
    sieve_array = Array.new(@max, true)
    prime_nums = Array.new

    # Each element in sieve_array is offset by -1 from referenced integer
    (2..Math.sqrt(@max).to_i).each do |n|
      next if sieve_array[n - 1] == false
      j = 0
      while n**2 + n * j <= @max do
        sieve_array[n ** 2 + n * j - 1] = false
        j += 1
      end
    end
    (2..@max).each { |n| prime_nums.push(n) if sieve_array[n - 1] == true }
    prime_nums
  end
end

module BookKeeping
  VERSION = 1
end