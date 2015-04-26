class Player

  def initialize
    @sets = 0
    @games = 0
    @possible_points = [0, 15, 30, 40, 'A']
    @point_counter = 0
    @points = 0
  end

  def get_set_score
    return @sets
  end

  def get_game_score
    return @games
  end

  def get_points
    return @possible_points[@point_counter]
  end

  def score_a_point
    @point_counter += 1
  end

  def set_points_to_0
    @point_counter = 0
  end

  def sum_game_points
    @games += 1
  end
end