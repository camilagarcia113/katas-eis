require_relative '../../app/models/Board.rb'
require_relative '../../app/models/Ships_and_Water.rb'


Given(/^a small ship in position: “(\d+):(\d+)”$/) do |x, y|
  @board.put_small_ship x.to_i, y.to_i
end

Given(/^I shoot to position “(\d+):(\d+)”$/) do |x, y|
  @result = @board.shoot_to_position x.to_i, y.to_i
end

Then(/^I get hit$/) do
  expect(@result).to eq("Ship sinked")
end

Given(/^a large ship in position: “(\d+):(\d+)”$/) do |x, y|
  @board.put_large_ship x.to_i, y.to_i, 'vertical'
end

Given(/^I shoot to “(\d+):(\d+)”$/) do |x, y|
  @result = @board.shoot_to_position x.to_i, y.to_i
end

Then(/^I get damaged$/) do
  expect(@result).to eq("Ship damaged")
end

Then(/^I get water$/) do
  expect(@result).to eq("Water")
end






