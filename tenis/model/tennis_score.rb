class TennisScore

  def initialize(a_player, another_player)
    @player1 = a_player
    @player2 = another_player
  end

  def get_set_score
    return "(" + @player1.get_set_score.to_s + "," + @player2.get_set_score.to_s + ")"
  end

  def get_game_score
    return "(" + @player1.get_game_score.to_s + "," + @player2.get_game_score.to_s + ")"
  end

  def get_points
    return "(" + @player1.get_points.to_s + "," + @player2.get_points.to_s + ")"
  end

  def get_player1
    return @player1
  end

  def get_player2
    return @player2
  end
end