class Player

  def initialize
    @sets = 0
    @games = 0
    @possible_points = [0, 15, 30, 40, 'A']
    @point_counter = 0
    @points = 0
  end

  def get_set_score
    @sets
  end

  def get_game_score
    @games
  end

  def get_points
    @possible_points[@point_counter]
  end

  def set_points_to_0
    @point_counter = 0
    @points = 0
  end

  def set_game_points_to_0
    @games = 0
  end

  def score_a_point
    @point_counter += 1
  end

  def sum_game_points
    @games += 1
  end

  def sum_set_points
    @sets += 1
  end

end