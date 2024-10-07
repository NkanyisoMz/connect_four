require 'board'

RSpec.describe Board do
  let(:board) { Board.new }

  describe '#initialize' do
    it 'creates a 6x7 grid' do
      expect(board.grid.size).to eq(6)
      expect(board.grid.first.size).to eq(7)
    end
  end

  describe '#drop_piece' do
    it 'drops a piece in the correct column' do
      board.drop_piece(0, 'X')
      expect(board.grid[5][0]).to eq('X')
    end

    it 'returns false if the column is full' do
      6.times { board.drop_piece(0, 'X') }
      expect(board.drop_piece(0, 'O')).to be false
    end
  end

  describe '#win?' do
    it 'detects a horizontal win' do
      4.times { |i| board.drop_piece(i, 'X') }
      expect(board.win?('X')).to be true
    end

    it 'detects a vertical win' do
      4.times { board.drop_piece(0, 'X') }
      expect(board.win?('X')).to be true
    end

    it 'detects a diagonal win' do
      board.drop_piece(0, 'X') # Row 5, Col 0
      board.drop_piece(1, 'O')
      board.drop_piece(1, 'X') # Row 5, Col 1
      board.drop_piece(2, 'O')
      board.drop_piece(2, 'O')
      board.drop_piece(2, 'X') # Row 5, Col 2
      board.drop_piece(3, 'O')
      board.drop_piece(3, 'O')
      board.drop_piece(3, 'O')
      board.drop_piece(3, 'X') # Row 5, Col 3 (Completes diagonal ↘)
    
      expect(board.win?('X')).to be true
    end
    
  end
end
