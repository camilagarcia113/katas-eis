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
 #pending
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |x, y|
  #pending
end

Given(/^I create a large ship in position "(\d+):(\d+)"$/) do |x, y|
  #pending
end

Then(/^I create a small ship in an invalid position "(\d+):(\d+)" and Alert invalid location$/) do | x ,y|
  #pending
end

Then(/^I create a large ship in an invalid position "(\d+):(\d+)" and Alert invalid location$/) do | x ,y|
  #pending
end

