class Grid
  def initialize
    @grid = Array.new(3) { Array.new(3, "") }
  end

  def [](row, col)
    @grid[row][col]
  end

  def []=(row, col, value)
    @grid[row][col] = value
  end

  def to_s
    @grid.map { |row| row.join(" | ") }.join("\n")
  end
end

ttt = Grid.new
ttt[2, 2] = "x"
puts ttt