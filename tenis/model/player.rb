class Player

  def initialize
    @sets = 0
    @games = 0
    @points = 0
  end

  def get_set_score
    return @sets
  end

  def get_game_score
    return @games
  end

  def get_points
    return @points
  end

  def score_a_point
    if (@points.eql? 0) || (@points.eql? 15)
      @points += 15
    else
      @points += 10
    end
  end

end