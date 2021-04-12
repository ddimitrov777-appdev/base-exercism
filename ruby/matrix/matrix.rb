=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end


class Matrix

    def initialize(argument)
        @thestring = argument
    end

    def rows
     p "nice"
    end
    
    def columns
    end

end

test = Matrix.new("this is the string")
test.rows