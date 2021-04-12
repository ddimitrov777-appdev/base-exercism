=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

#Find new line... split on this to get rows...
#count slots per fow

class Matrix
  def initialize(argument)
    @thestring = argument
  end

  def rows
    split = @thestring.split(/\n/)
    rowsize = @thestring.index(/\n/) - 1
    newarray = []

    split.each do |item|
      newarray += item.split(/ /)
    end
    
    newarray.map(&:to_i)
    #newarray.grep(/\d+/, &:to_i)
    #newarray.map { |n| n.to_i }
    #arraysplit = split.each { |n| n.split(/ /)}
    finalarray = newarray.each_slice(2).to_a
    finalarray.map { |sr| sr.map(&:to_i) }
  end

  def columns
  end
end

test = Matrix.new("1 2\n10 20")
p test.rows[0]