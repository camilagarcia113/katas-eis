class TennisMatch

  def initialize(a_player, another_player, tennis_score)
    @player1 = a_player
    @player2 = another_player
    @tennis_score = tennis_score
  end

  def get_set_score
    return @tennis_score.get_set_score
  end


end