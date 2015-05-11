require 'rspec'
require_relative '../../app/models/Board.rb'

describe 'a Board' do

  #TEST 1
  it 'should have created a Board' do
    expect(Board.new 5,5).to be_an_instance_of(Board)
  end

  #TEST 2
#  it 'should not have position 3:3 empty when i create a small ship in that position' do
#	@board.put_ship_in_position(1, 3, 3)  	
#	expect(@board[3,3]).to eq 1
 # end

end
