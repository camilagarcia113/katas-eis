require 'rspec'
require_relative '../../app/models/board.rb'
require_relative '../../app/models/small_ship.rb'

describe 'Small_Ship' do

  #TEST 1
  it 'should hit the Small_Ship in position 3:3 when i shoot it' do
    board = Board.new 5,5
    board.put_small_ship(3, 3)
    expect(board.shoot_to_position(3, 3)).to eq('Ship sunk')
  end
end