class InvalidNewScore < StandardError
  def initialize(msg="new_score should be a numeric")
      super 
  end
end

class Player
  attr_reader :name, :total_score

  def initialize(name)
    @name = name
    @total_score = 0
  end

  def add_to_total_score(new_score)
    if !new_score.is_a? Numeric 
      raise InvalidNewScore
    end

    @total_score += new_score
  end
end