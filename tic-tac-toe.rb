class Grid
  def initialize
    @grid = Array.new(3) { Array.new(3, " ") }
  end

  # getter method to read a value in the grid
  def [](row, col)
    @grid[row][col]
  end

  # setter method to write a value in the grid
  def []=(row, col, value)
    @grid[row][col] = value
  end

  # method to print out the grid as a string table in the console
  def to_s
    @grid.map { |row| row.join(" | ") }.join("\n")
  end

end

ttt = Grid.new

class Player
  def initialize(name)
    @name = name
  end

  def play
    print "#{@name}, enter the row: "
    row = gets.chomp
    print '...the column: '
    col = gets.chomp
    print '...and the letter: '
    letter = gets.chomp
    return [row, col, letter]
  end
end

player_1 = Player.new('Bob')
player_1.play

# test entries while entry method not yet implemented
# --- horizontal win
# ttt[2, 0] = "o"
# ttt[2, 1] = "o"
# ttt[2, 2] = "o"
# --- vertical win
# ttt[0, 0] = "o"
# ttt[1, 0] = "o"
# ttt[2, 0] = "o"
# --- diagonal win
ttt[2, 0] = "o"
ttt[1, 1] = "o"
ttt[0, 2] = "o"

puts ttt


#helper methods to check for win

# helper method to check if x wins vertically
def check_vertical_x(grid)
  vertical = 0
  for i in 0..2 do
    if grid[0, i] == 'x' && grid[1, i] == 'x' && grid[2, i] == 'x'
      vertical += 1
    end    
  end
  if vertical > 0
    puts 'vertical : x won!'
  end
end

# helper method to check if x wins horizontally
def check_horizontal_x(grid)
  horizontal = 0
  for i in 0..2 do
    if grid[i, 0] == 'x' && grid[i, 1] == 'x' && grid[i, 2] == 'x'
      horizontal += 1
    end
  end
  if horizontal > 0
    puts 'horizontal : x won!'
  end
end

# helper method to check if o wins vertically
def check_vertical_o(grid)
  vertical = 0 
  for i in 0..2 do
    if grid[0, i] == 'o' && grid[1, i] == 'o' && grid[2, i] == 'o'
      vertical += 1
    end
  end
  if vertical > 0
    puts 'vertical : o won!'
  end
end

# helper method to check if o wins horizontally
def check_horizontal_o(grid)
  horizontal = 0
  for i in 0..2 do
    if grid[i, 0] == 'o' && grid[i, 1] == 'o' && grid[i, 2] == 'o'
      horizontal += 1
    end
  end
  if horizontal > 0
    puts 'horizontal : o won!'
  end
end

# helper method to check if x wins diagonally v1
def check_diagonal_1_x(grid)
  if grid[0, 0] == 'x' && grid[1, 1] == 'x' && grid[2, 2] == 'x'
    puts 'diagonal 1 : x won!'
  end
end

# helper method to check if x wins diagonally v2
def check_diagonal_2_x(grid)
  if grid[2, 0] == 'x' && grid[1, 1] == 'x' && grid[0, 2] == 'x'
    puts 'diagonal 2 : x won!'
  end
end

# helper method to check if o wins diagonally v1
def check_diagonal_1_o(grid)
  if grid[0, 0] == 'o' && grid[1, 1] == 'o' && grid[2, 2] == 'o'
    puts 'diagonal 1 : o won!'
  end
end

# helper method to check if o wins diagonally v2
def check_diagonal_2_o(grid)
  if grid[2, 0] == 'o' && grid[1, 1] == 'o' && grid[0, 2] == 'o'
    puts 'diagonal 2 : o won!'
  end
end

check_vertical_x(ttt)
check_horizontal_x(ttt)
check_vertical_o(ttt)
check_horizontal_o(ttt)
check_diagonal_1_x(ttt)
check_diagonal_2_x(ttt)
check_diagonal_1_o(ttt)
check_diagonal_2_o(ttt)