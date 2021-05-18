require_relative "../Player"

describe "Player" do

  

  it "should initialize a new player" do
    player1 = Player.new("Ada")
    expect(player1.name).to eq("Ada")
  end

  it "should have a default difficulty" do
    player1 = Player.new("Ada")
    expect(player1.difficulty).to eq("easy")
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

  it "should be able to change the difficulty" do
    player1 = Player.new("Ada")

    player1.set_difficulty("medium")
    expect(player1.difficulty).to eq("medium")

    player1.set_difficulty("hard")  
    expect(player1.difficulty).to eq("hard")
  end

  it "should return InvalidDifficulty when failing to update difficulty" do
    player1 = Player.new("Ada")
    expect { player1.set_difficulty("foo") }.to raise_error InvalidDifficulty
    expect { player1.set_difficulty(9) }.to raise_error InvalidDifficulty
  end

  # it "should throw an error when difficulty is not 'easy', 'medium' or 'hard'" do
  #   # player1 = Player.new("Ada")
  #   # player1.set_difficulty("medium")
  #   # expect(player1.difficulty).to eq("medium")
  # end

  # it "should be able to update the total score" do
  #   player1 = Player.new("Ada")
  #   player1.total_score = 100
  #   expect(player1.total_score).to eq(100)
  # end
end

#
# 
#
#
#
#
#
#
#
