=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn

    def self.valid?(string)
        everyother_array = []
        digits = string.chars.each_with_index do |element, index|
            if ((index+1) % 2) == 0
            everyother_array += element
            end
        
        end
        return everyother_array
    end
    
end

testy = Luhn.new
testy.valid?