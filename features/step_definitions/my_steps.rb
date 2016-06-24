Given(/^the user starts a new game$/) do
  visit('/')
end

Then(/^the screen shows the hidden word "(.*?)" hidden$/) do |word|
	text = '-' * word.length
  	last_response.body.should =~ /#{text}/m
end

Given(/^the user start a new game with word "(.*?)"$/) do |arg1|
  visit('/')
end

When(/^a letter "(.*?)" is found on the word$/) do |arg1|
  visit('/new-letter')
end

Then(/^the hidden word shows "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end
