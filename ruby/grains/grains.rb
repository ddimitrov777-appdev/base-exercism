=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains
    def self.square(num = 64)
        if num <= 0
        raise ArgumentError
        else
        @indexnum = num - 1
        thearray = Array.new
        (0..63).each do |n|
          @thearray << (2 ** n)
        end
        return @thearray[@indexnum]
        end
    end

    def self.total
        Grains.square(64)
        thetotal = @thearray.inject(0){|sum,x| sum + x }
    end
end


p Grains.square(4)
p Grains.total