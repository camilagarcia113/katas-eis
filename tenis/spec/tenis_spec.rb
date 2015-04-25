require 'rspec'
require_relative '../model/tennis_score.rb'
require_relative '../model/player.rb'

describe 'TennisScore' do

  it 'should have the set points at 0 when the game begins' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_set_points.should ==("(0,0)")
  end

  it 'should have the game points at 0 when the game begins' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_game_points.should ==("(0,0)")
  end

end
