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
  visit '/'
  fill_in(:x_ss, :with => x)
  fill_in(:y_ss, :with => y)
  click_button "put_small_ship"
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |x, y|
 #expect(@board.is_occupied? x.to_i, y.to_i).to eq(true)
  fill_in(:x_e, :with => x)
  fill_in(:y_e, :with => y)
  click_button "submit_empty_position"
  page.should have_content('Position is not empty')
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

