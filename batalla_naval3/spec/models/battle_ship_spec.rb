require 'rspec'
require_relative '../../app/models/board.rb'

describe 'BattleShip' do

 before (:each) do
 @board = Board.new 5,5
 end

 #TEST 1
 it 'should have created a Board' do
   expect(Board.new 5,5).to be_an_instance_of(Board)
 end
end