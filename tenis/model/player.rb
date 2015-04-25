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
    elsif @points.eql?30
      @points = 40
    end
  end

  def set_points_to_0
    @points = 0
  end

  def win_a_game
    self.set_points_to_0
    self.score_a_game_point
  end

  def score_a_game_point
    @games += 1
  end

end