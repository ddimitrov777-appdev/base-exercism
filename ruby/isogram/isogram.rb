=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end
class Isogram
    attr_reader :isogram
    alias_method :isogram?, :isogram

    def initialize(isostring)
    @isostring = isostring

    array = @isostring.each_char.find { |c| @isostring.count(c) > 1 }
        if array == nil
        @isogram = true
        else
        @isogram = false
        end
    end

end

testy = Isogram.new("fiojws  a")
p testy.isogram?
