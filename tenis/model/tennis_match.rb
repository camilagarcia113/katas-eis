class TennisMatch

  def initialize(a_player, another_player, tennis_score)
    @player1 = a_player
    @player2 = another_player
    @tennis_score = tennis_score
  end

  def get_set_score
    return @tennis_score.get_set_score
  end

  def get_game_score
    return @tennis_score.get_game_score
  end

  def get_points
    return @tennis_score.get_points
  end

  def point_scored_by(a_player)
    unless a_player.get_points.eql? 40
      @tennis_score.player_scores_a_point(a_player)
    else
      @tennis_score.set_points_to_0
      @tennis_score.player_wins_a_game_point(a_player)
    end
  end


end