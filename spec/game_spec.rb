require 'game'

describe Game do
  let(:will) { double:player, name: 'Will'}
  let(:wes) { double:player, name: 'Will'}
  subject(:game) { described_class.new(will, wes) }

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq will
    end
  end

  describe '#player_1' do
    it 'retreives the first player' do
      expect(game.player_1).to eq will
    end
  end

  describe '#player_2' do
    it 'retreives the second player' do
      expect(game.player_2).to eq wes
    end
  end

  describe '#attack' do
    it 'allows a player to attack' do
      expect(wes).to receive(:receive_damage)
      game.attack(wes)
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(will)).to eq wes
      expect(game.opponent_of(wes)).to eq will
    end
  end
end
