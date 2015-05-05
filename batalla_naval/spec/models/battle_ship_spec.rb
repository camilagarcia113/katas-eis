require_relative '../../app/models/Board.rb'
require_relative '../spec_helper.rb'

describe 'Battleship' do

  before (:each) do
    @board = Board.new 5,5
  end

  #TEST 1
  it 'should have created a 5x5 Board' do
    expect(@board.size[0]).to eq 5
    expect(@board.size[1]).to eq 5
  end

end
