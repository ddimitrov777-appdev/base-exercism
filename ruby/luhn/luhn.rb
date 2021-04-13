=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

module Luhn

    def self.otherthing(string)
        everyother_array = []
        digits = string.chars.each_with_index do |element, index|
            if ((index+1) % 2) == 0
            everyother_array += element
            end
        
        end
        return everyother_array
    end
    



  def self.valid?(input)
    input
      .gsub(/\s/, '')
      .tap { |s| return false unless s[/\A\d\d+\z/] }
      .chars
      .reverse
      .map.with_index { |d, i| i.odd? ? d.to_i * 2 : d.to_i }
      .map { |d| d > 9 ? d - 9 : d }
      .sum % 10 == 0
  end

end

Luhn.valid?("123095")