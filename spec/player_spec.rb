require 'Player'
describe Player do
  let(:jack) {Player.new("Jack")}
  let(:jill) {Player.new("Jill")}
  it "returns its own name" do
    expect(jack.name).to eq 'Jack'
  end
end
