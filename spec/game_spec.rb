require 'game'
require 'player'

RSpec.describe Game do
  let(:player1) { Player.new('Alice', 'X') }
  let(:player2) { Player.new('Bob', 'O') }
  let(:game) { Game.new(player1, player2) }

  describe '#play' do
    it 'allows players to take turns' do
      allow(game).to receive(:gets).and_return("0\n", "1\n", "0\n", "1\n", "0\n", "1\n", "0\n", "1\n", "0\n")
      expect { game.play }.to output(/Alice wins!/).to_stdout
    end
  end
end
