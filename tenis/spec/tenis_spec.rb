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

  #TEST 3
  it 'should have both players points in 0 when the match begins' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.get_points.should == ("Points: (0,0)")
  end

  #TEST 4
  it 'should add 15 to nadals points when he scores the first time' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.point_scored_by(nadal)
    tennis_match.get_points.should == ("Points: (15,0)")
  end

  #TEST 5
  it 'should show 30 points to federer when he scores 2 times' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.point_scored_by(nadal)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    tennis_match.get_points.should == ("Points: (15,30)")
  end

  #TEST 6
  it 'should show 40 points to federer when he scores 3 times' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.point_scored_by(nadal)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    tennis_match.get_points.should == ("Points: (15,40)")
  end

  #TEST 7
  it 'should show 0 points for both players when federer scores 4 times and 1 game point for him' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.point_scored_by(nadal)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    tennis_match.get_points.should == ("Points: (0,0)")
    tennis_match.get_game_score.should == ("Games: (0,1)")
  end

  #TEST 8
  it 'should show an A in nadals poins when he scores another time after being tied 40-40' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.point_scored_by(nadal)
    tennis_match.point_scored_by(nadal)
    tennis_match.point_scored_by(nadal)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(nadal)
    tennis_match.get_points.should == ("Points: (A,40)")
  end

  #TEST 9
  it 'should show 0 points and 0 game points for both players and 1 set point for nadal after he wins the 6th game' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    for points_made in 1..25
      tennis_match.point_scored_by(nadal)
    end
    tennis_match.get_points.should == ("Points: (0,0)")
    tennis_match.get_game_score.should == ("Games: (0,0)")
    tennis_match.get_set_score.should == ("Sets: (1,0)")
  end

  #TEST 10
  it 'should show 0 points and 0 game points for both players and 2 set points for nadal after he wins the game' do
    nadal = Player.new
    federer = Player.new
    tennis_score = TennisScore.new(nadal, federer)
    tennis_match = TennisMatch.new(nadal, federer, tennis_score)
    tennis_match.point_scored_by(federer)
    tennis_match.point_scored_by(federer)
    for points_made in 1..50
      tennis_match.point_scored_by(nadal)
    end
    tennis_match.get_points.should == ("Points: (0,0)")
    tennis_match.get_game_score.should == ("Games: (0,0)")
    tennis_match.get_set_score.should == ("Sets: (2,0)")
  end
end

