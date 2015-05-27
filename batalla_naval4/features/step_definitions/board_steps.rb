require_relative '../../app/models/board.rb'
require_relative '../../app/models/small_ship.rb'
require_relative '../../app/models/large_ship.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |x, y|
  visit '/'
  fill_in(:x, :with => x)
  fill_in(:y, :with => y)
  click_button "submit_board"
end

Given(/^I create a small ship in position "(\d+):(\d+)"$/) do |x, y|
  fill_in(:small_ship_x, :with => x)
  fill_in(:small_ship_y, :with => y)
  click_button "put_small_ship"
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |x, y|
  fill_in(:is_occupied_x, :with => x)
  fill_in(:is_occupied_y, :with => y)
  click_button "submit_occupied_position"
  page.should have_content('Occupied')
end

Given(/^I create a large ship in position "(\d+):(\d+)"$/) do |x, y|
  visit '/'
  fill_in(:large_ship_x, :with => x)
  fill_in(:large_ship_y, :with => y)
  click_button "put_large_ship"
end

Then(/^I create a small ship in an invalid position "(\d+):(\d+)" and Alert invalid location$/) do | x ,y|
  visit '/'
  fill_in(:small_ship_x, :with => x)
  fill_in(:small_ship_y, :with => y)
  click_button "put_small_ship"
  page.should have_content('Position out of board')
end

Then(/^I create a large ship in an invalid position "(\d+):(\d+)" and Alert invalid location$/) do | x ,y|
  visit '/'
  fill_in(:large_ship_x, :with => x)
  fill_in(:large_ship_y, :with => y)
  click_button "put_large_ship"
  page.should have_content('Position out of board')
end

