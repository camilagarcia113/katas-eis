class TennisScore

  def initialize(a_player, another_player)
    @player1 = a_player
    @player2 = another_player
  end

  def get_set_score
    "Sets: (" + @player1.get_set_score.to_s + "," + @player2.get_set_score.to_s + ")"
  end

  def get_game_score
    "Games: (" + @player1.get_game_score.to_s + "," + @player2.get_game_score.to_s + ")"
  end

  def get_points
    "Points: (" + @player1.get_points.to_s + "," + @player2.get_points.to_s + ")"
  end

  def set_points_to_0
    @player1.set_points_to_0
    @player2.set_points_to_0
  end

  def set_game_points_to_0
    @player1.set_game_points_to_0
    @player2.set_game_points_to_0
  end

  def player_scores_a_point(a_player)
    a_player.score_a_point
  end

  def player_wins_a_game_point(a_player)
    a_player.sum_game_points
  end

  def player_wins_a_set(a_player)
    a_player.sum_set_points
  end

end