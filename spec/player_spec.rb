require 'Player'
describe Player do
  it "returns its own name" do
    player = Player.new("Jack")
    expect(player.return_name).to eq 'Jack'
  end
end
