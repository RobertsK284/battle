require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  it 'creates an instance of the Game class' do
    expect(game.instance_of? Game).to be true
  end

  it 'creates a player called Jack and stores it in @player_1' do
    expect(game.player_1.return_name).to eq "Jack"
  end

  it 'creates a player called Jill and stores it in @player_2' do
    expect(game.player_2.return_name).to eq "Jill"
  end

  it 'damages the player' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end
end
