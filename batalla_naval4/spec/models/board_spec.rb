require 'rspec'
require_relative '../../app/models/board.rb'
require_relative '../../app/models/small_ship.rb'
require_relative '../../app/models/large_ship.rb'

describe 'Board' do


 #TEST 1
 it 'should have created a Board' do
   expect(Board.new 5,5).to be_an_instance_of(Board)
 end


#TEST 2
it 'should not have position 3:3 empty when i create a small ship there' do
 board = Board.new 5,5
 board.put_small_ship(3, 3)
 expect(board.is_occupied?(3,3)).to eq(true)
end

 #TEST 3
 it 'should not have position 3:3 and position 3:4 empty when i create a large ship there' do
   board = Board.new 5,5
   board.put_large_ship(3,3)
   expect(board.is_occupied?(3,3)).to eq(true)
   expect(board.is_occupied?(3,4)).to eq(true)
 end

  #TEST 4
  it 'should raise an error when i try to create a small ship in an invalid location' do
    board = Board.new 5,5
    expect {board.put_small_ship(6, 6)}.to raise_error
  end

  #TEST 5
  it 'should raise an error when i try to create a large ship in an invalid location' do
    board = Board.new 5,5
    expect {board.put_large_ship(10, 2)}.to raise_error
  end

  #TEST 6
  it 'should raise an error when i try to shoot an invalid location' do
    board = Board.new 5,5
    expect {board.shoot_to_position(8, 70)}.to raise_error
  end

end
