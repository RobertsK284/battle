class Player
  attr_accessor :hit_points
  def initialize(name)
    @name = name
    @hit_points = 100
  end

  def return_name
    @name
  end

  def attack(player)
    player.hit_points -= 10
  end
end
