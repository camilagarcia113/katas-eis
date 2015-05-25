require_relative '../../app/models/board.rb'
require_relative '../../app/models/small_ship.rb'
require_relative '../../app/models/large_ship.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |x, y|
 @board = Board.new x.to_i, y.to_i
end

Given(/^I create a small ship in position "(\d+):(\d+)"$/) do |x, y|
 @board.put_small_ship x.to_i, y.to_i
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |x, y|
 expect(@board.is_occupied? x.to_i, y.to_i).to eq(true)
end

Given(/^I create a large ship in position "(\d+):(\d+)"$/) do |x, y|
  @board.put_large_ship x.to_i, y.to_i
end

Then(/^I create a small ship in an invalid position "(\d+):(\d+)" and Alert invalid location$/) do | x ,y|
  expect{@board.put_small_ship x.to_i, y.to_i}.to raise_error
end

Then(/^I create a large ship in an invalid position "(\d+):(\d+)" and Alert invalid location$/) do | x ,y|
  expect{@board.put_large_ship x.to_i, y.to_i}.to raise_error
end

