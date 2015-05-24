require 'rspec'
require_relative '../../app/models/board.rb'
require_relative '../../app/models/water.rb'

describe 'Water' do

  #TEST 1
  it 'should hit the water when i shoot to position 4:4' do
    board = Board.new 5,5
    expect(board.shoot_to_position(4,4)).to eq('Water')
  end


end