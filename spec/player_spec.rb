require 'player'

RSpec.describe Player do
  let(:player) { Player.new('Alice', 'X') }

  describe '#initialize' do
    it 'sets the player name' do
      expect(player.name).to eq('Alice')
    end

    it 'sets the player piece' do
      expect(player.piece).to eq('X')
    end
  end
end
