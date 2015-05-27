require 'rspec'
require_relative '../../app/models/board.rb'
require_relative '../../app/models/large_ship.rb'

describe 'Large_Ship' do

  #TEST 1
  it 'should hit the large ship in position 2:2 when i shoot it' do
    board = Board.new 5,5
    board.put_large_ship(2,2)
    expect(board.shoot_to_position(2, 2)).to eq('Ship damaged')
  end

  #TEST 2
  it 'should sink the large ship in 2:2 when i shoot it twice' do
    board = Board.new 5,5
    board.put_large_ship(2,2)
    expect(board.shoot_to_position(2, 2)).to eq('Ship damaged')
    expect(board.shoot_to_position(2, 3)).to eq('Ship sunk')
  end

end