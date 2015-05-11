require 'rspec'
require_relative '../../app/models/Board.rb'
require_relative '../../app/models/Ships.rb'


describe 'a Board' do

  #TEST 1
  it 'should have created a Board' do
    expect(Board.new 5,5).to be_an_instance_of(Board)
  end

  #TEST 2
  it 'should not have position 3:3 empty when i create a small ship there' do
    board = Board.new 5,5
    small_ship = Small_Ship.new
    board.put_ship(small_ship, 3, 3)
    expect(board.is_occupied?(3,3)).to eq(true)
  end

end
