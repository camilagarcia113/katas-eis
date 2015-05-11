require_relative '../../app/models/Board.rb'
require_relative '../../app/models/Ships.rb'


Given(/^a small ship in position: “(\d+):(\d+)”$/) do |x, y|
  @board.put_small_ship x.to_i, y.to_i
end

Given(/^I shoot to position “(\d+):(\d+)”$/) do |x, y|
  @result = @board.shoot_to_position x.to_i, y.to_i
end

Then(/^I get hit$/) do
  expect(@result).to eq("Ship sinked")
end