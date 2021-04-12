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

    @seriouslyfinalarray = finalarray.map { |sr| sr.map(&:to_i) }
    return @seriouslyfinalarray

    @numcols = @seriouslyfinalarray[0].count - 1
  end

  def columns
    therange = Range.new(0, @numcols)
    width = (@numcols + 1)
    height = (@seriouslyfinalarray.count - 1)
    colarray = Array.new(height + 1) { Array.new(width) }
    range2 = Range.new(0, height)

    therange.each do |x|
      range2.each do |y|
        colarray[x][y] = @seriouslyfinalarray[y][x]
      end
    end
    return colarray
  end
end

test = Matrix.new("1 2\n10 20")
p test.columns
#p test.rows[1]
