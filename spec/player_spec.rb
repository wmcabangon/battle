require 'player'

describe Player do
  subject(:will) { described_class.new('Will') }

  describe '#name' do
    it 'assigns a nae to a player' do
      expect(will.name).to eq 'Will'
    end
  end
end
