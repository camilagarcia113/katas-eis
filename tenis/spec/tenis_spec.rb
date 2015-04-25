require 'rspec'
require_relative '../model/tennis_score.rb'
require_relative '../model/player.rb'

describe 'TennisScore' do

  #TEST 1
  it 'should have the set points in 0 when the game begins' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_set_score.should ==("(0,0)")
  end

  #TEST 2
  it 'should have the game points in 0 when the game begins' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_game_score.should ==("(0,0)")
  end

  #TEST 3
  it 'should have both players points in 0 when the game begins' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_points.should ==("(0,0)")
  end

  #TEST 4
  it 'should add 15 to nadals points when he scores' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_player1.score_a_point
    tennis_score.get_points.should == ("(15,0)")
  end

end

