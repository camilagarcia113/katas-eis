require_relative '../../app/models/board.rb'
require_relative '../../app/models/small_ship.rb'
require_relative '../../app/models/large_ship.rb'
require_relative '../../app/models/water.rb'

Given(/^a small ship in position: “(\d+):(\d+)”$/) do |x, y|
  visit '/'
  fill_in(:small_ship_x, :with => x)
  fill_in(:small_ship_y, :with => y)
  click_button "put_small_ship"
end

Given(/^I shoot to position “(\d+):(\d+)”$/) do |x, y|
  visit '/'
  fill_in(:shoot_x, :with => x)
  fill_in(:shoot_y, :with => y)
  click_button "submit_shot"
end

Then(/^I get hit$/) do
  page.should have_content("Ship sunk")
end

Given(/^a large ship in position: “(\d+):(\d+)”$/) do |x, y|
  @board.put_large_ship x.to_i, y.to_i
end

Then(/^I get damaged$/) do
  expect(@result).to eq ("Ship damaged")
end

Then(/^I get water$/) do
  expect(@result).to eq ("Water")
end

Then(/^I shoot to an invalid position "(\d+):(\d+)" and Alert invalid location$/) do | x ,y|
  expect{@board.shoot_to_position x.to_i, y.to_i}.to raise_error
end




