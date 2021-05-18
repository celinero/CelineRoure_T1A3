class InvalidNewScore < StandardError
  def initialize(msg="new_score should be a numeric")
      super 
  end
end

class InvalidDifficulty < StandardError
  def initialize(msg="new_difficulty should be a easy, medium or hard")
      super 
  end
end

class Player
  attr_reader :name, :difficulty, :total_score

  def initialize(name)
    @name = name
    @difficulty = "easy"
    @total_score = 0
  end


  def add_to_total_score(new_score)
    if !new_score.is_a? Numeric 
      raise InvalidNewScore
    end

    @total_score += new_score
  end

  def set_difficulty(new_difficulty)
    if new_difficulty == "easy" || new_difficulty == "medium" || new_difficulty == "hard"
      @difficulty = new_difficulty
    else
      raise InvalidDifficulty
    end

   
  end
end


# class Foo
#   @bar // privé, impossible d'y accéder
#
#  // getter
#  def get_bar // public method
#    return @bar
#  end
#
#  // setter
#  def set_bar(bar) // public method
#    @bar = bar
#  end
# end

# class Foo
#  attr_reader: bar
#  @bar // read only
#
#  // setter
#  def set_bar(bar) // public method
#    @bar = bar
#  end
# end