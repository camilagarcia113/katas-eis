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
    board.put_small_ship(3, 3)
    expect(board.is_occupied?(3,3)).to eq(true)
  end

  #TEST 3
  it 'should not have position 3:3 and position 3:4 empty when i create a large ship there' do
    board = Board.new 5,5
    board.put_large_ship(3,3, 'horizontal')
    expect(board.is_occupied?(3,3)).to eq(true)
    expect(board.is_occupied?(3,4)).to eq(true)
  end

  #TEST 4
  it 'should hit the small ship in position 3:3 when i shoot it' do
    board = Board.new 5,5
    board.put_small_ship(3, 3)
    expect(board.shoot_to_position(3, 3)).to eq('Ship sinked')
  end


  #TEST 5
  it 'should hit the large ship in position 2:2 when i shoot it' do
    board = Board.new 5,5
    board.put_large_ship(2, 2, 'vertical')
    expect(board.shoot_to_position(2, 2)).to eq('Ship damaged')
  end

end
