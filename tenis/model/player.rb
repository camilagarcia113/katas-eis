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

  def sum_points(points)
    @points += points
  end

  def set_points_to_0
    @points = 0
  end

  def sum_game_points
    @games += 1
  end
end