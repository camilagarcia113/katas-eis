class TennisScore

  def initialize(a_player, another_player)
    @player1 = a_player
    @player2 = another_player
  end

  def get_set_points
    return "(" + @player1.get_set_points.to_s + "," + @player2.get_set_points.to_s + ")"
  end

end