require 'game'
require 'player'

describe Game do
  it 'creates an instance of the Game class' do
    game = Game.new
    expect(game.instance_of? Game).to be true
  end

  it 'creates a player called Jack and stores it in @player_1' do
    game = Game.new
    expect(game.player_1.return_name).to eq "Jack"
  end

  it 'creates a player called Jill and stores it in @player_2' do
    game = Game.new
    expect(game.player_2.return_name).to eq "Jill"
  end
end
