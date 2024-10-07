class Game
  attr_reader :board, :current_player

  def initialize(player1, player2)
    @board = Board.new
    @players = [player1, player2]
    @current_player = @players.first
  end

  def play
    loop do
      display_board
      puts "#{current_player.name}, choose a column (0-6): "
      column = gets.chomp.to_i

      if board.column_full?(column)
        puts "Column is full! Choose another."
        next
      end

      board.drop_piece(column, current_player.piece)

      if board.win?(current_player.piece)
        display_board
        puts "#{current_player.name} wins!"
        break
      end

      switch_player
    end
  end

  private

  def display_board
    board.grid.reverse.each { |row| puts row.join('|') }
    puts '-' * 29
  end

  def switch_player
    @current_player = @players.reject { |player| player == current_player }.first
  end
end
