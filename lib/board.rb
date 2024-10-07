class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(6) { Array.new(7, ' ') }
  end

  def drop_piece(column, piece)
    row = available_row(column)
    return false if row.nil?

    @grid[row][column] = piece
    true
  end

  def available_row(column)
    (0..5).to_a.reverse.find { |row| @grid[row][column] == ' ' }
  end

  def column_full?(column)
    @grid[0][column] != ' '
  end

  def win?(piece)
    horizontal_win?(piece) || vertical_win?(piece) || diagonal_win?(piece)
  end

  private

  def horizontal_win?(piece)
    @grid.each do |row|
      return true if row.join.include?(piece * 4)
    end
    false
  end

  def vertical_win?(piece)
    (0..6).each do |col|
      return true if (0..5).map { |row| @grid[row][col] }.join.include?(piece * 4)
    end
    false
  end

  def diagonal_win?(piece)
    (0..5).each do |row|
      (0..6).each do |col|
        return true if check_diagonal(row, col, piece)
      end
    end
    false
  end

  def check_diagonal(row, col, piece)
    # Check down-right diagonal (↘)
    if row + 3 <= 5 && col + 3 <= 6
      return true if (0..3).all? { |i| @grid[row + i][col + i] == piece }
    end
  
    # Check up-right diagonal (↗)
    if row - 3 >= 0 && col + 3 <= 6
      return true if (0..3).all? { |i| @grid[row - i][col + i] == piece }
    end
  
    false
  end
  
end
