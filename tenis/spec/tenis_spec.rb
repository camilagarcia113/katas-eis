require 'rspec'
require_relative '../model/tennis_score.rb'
require_relative '../model/player.rb'
require_relative '../model/tennis_match.rb'

describe 'TennisScore' do

  #TEST 1
  it 'should have the set points in 0 when the match begins' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.get_set_score.should ==("Sets: (0,0)")
  end

  #TEST 2
  it 'should have the game points in 0 when the match begins' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.get_game_score.should ==("Games: (0,0)")
  end

=begin
  #TEST 3
  it 'should have both players points in 0 when the match begins' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_points.should == ("Points: (0,0)")
  end

  #TEST 4
  it 'should add 15 to nadals points when he scores the first time' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_player1.score_a_point
    tennis_score.get_points.should == ("Points: (15,0)")
  end

  #TEST 5
  it 'should show 30 points to federer when he scores 2 times' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_player1.score_a_point
    tennis_score.get_player2.score_a_point
    tennis_score.get_player2.score_a_point
    tennis_score.get_points.should == ("Points: (15,30)")
  end

  #TEST 6
  it 'should show 40 points to federer when he scores 3 times' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_player1.score_a_point
    tennis_score.get_player2.score_a_point
    tennis_score.get_player2.score_a_point
    tennis_score.get_player2.score_a_point
    tennis_score.get_points.should == ("Points: (15,40)")
  end

  #TEST 7
  it 'should show 0 points for both players when federer scores 4 times and 1 game point for him' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_score.get_player1.score_a_point
    tennis_score.get_player2.score_a_point
    tennis_score.get_player2.score_a_point
    tennis_score.get_player2.score_a_point
    tennis_score.get_player2.score_a_point
    tennis_score.get_points.should == ("Points: (0,0)")
    tennis_score.get_game_score.should == ("Games: (0,1)")
  end
=end
end

