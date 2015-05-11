require_relative '../../app/models/Board.rb'
require_relative '../../app/models/Ships.rb'


Given(/^a board with dimensions "(\d+)" x "(\d+)"$/) do |x, y|
  @board = Board.new x.to_i, y.to_i
end

Given(/^I create a small ship in position "(\d+):(\d+)"$/) do |x, y|
  @board.put_ship Small_Ship.new, x.to_i, y.to_i
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |x, y|
  expect(@board.is_occupied? x.to_i, y.to_i).to eq(true)
end

