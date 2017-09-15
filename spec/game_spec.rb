require 'game'

describe Game do
  let(:will) { double:player, name: 'Will', hit_points: 100 }
  let(:wes) { double:player, name: 'Will', hit_points: 100 }
  let(:dead_player) { double:player, name: 'Cornholio', hit_points: 0 }
  subject(:game) { described_class.new(will, wes) }
  subject(:finished_game) { described_class.new(dead_player, wes) }

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

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(will)).to eq wes
      expect(game.opponent_of(wes)).to eq will
    end
  end

  describe '#game_over?' do
    it 'is false if both players are alive' do
      expect(game.game_over?).to eq false
    end
    it 'is true if 1 player is dead' do
      expect(finished_game.game_over?).to eq true
    end
  end

  describe '#loser' do
    it 'selects the knocked out player' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end
