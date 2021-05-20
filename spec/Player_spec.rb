require_relative "../Player"

describe "Player" do
  it "should initialize a new player" do
    player1 = Player.new("Ada")
    expect(player1.name).to eq("Ada")
  end

  it "should have a total score of 0" do
    player1 = Player.new("Ada")
    expect(player1.total_score).to eq(0)
  end

  it "should be able to add to total score" do
    player1 = Player.new("Ada")
    expect(player1.total_score).to eq(0)

    player1.add_to_total_score(20)
    expect(player1.total_score).to eq(20)

    player1.add_to_total_score(20)
    expect(player1.total_score).to eq(40)
  end

  it "should return InvalidNewScore when failing to update total score" do
    player1 = Player.new("Ada")
    expect { player1.add_to_total_score("foo") }.to raise_error InvalidNewScore
    expect { player1.add_to_total_score([]) }.to raise_error InvalidNewScore
  end
end