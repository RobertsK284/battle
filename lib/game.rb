require_relative './player.rb'

class Game
  attr_reader :player_1, :player_2

  def initialize
    @player_1 = Player.new("Jack")
    @player_2 = Player.new("Jill")
  end

  def attack(player)
    player.receive_damage
  end
end
