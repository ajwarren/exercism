class Raindrops
    
    Divisors = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

    def self.convert(num)
        s = ''
        Divisors.keys.each { |key| s << divisors[key] if num % key == 0 }
        s == '' ? num.to_s  : s
    end
end

module BookKeeping
    VERSION = 3
end
