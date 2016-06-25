Given(/^the user starts a new game$/) do
  visit('/')
end

Given(/^the user start a new game with word "(.*?)"$/) do |arg1|
  visit('/')
end

When(/^a letter "(.*?)" is submited$/) do |value|
  fill_in("new_letter", :with => value)
  click_button("ok")
end

Then(/^the hidden word shows "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^the display show the mismatch letter$/) do
  last_response.should have_xpath( "//div[@id=\"wrong-letters\"]") do |td|
    td.should contain( "X" )
  end
end

Then(/^the lives counter is (\d+)$/) do |arg1|
  last_response.should have_xpath( "//span[@id=\"lives\"]") do |td|
    td.should contain( arg1 )
  end
end

Then(/^the displays shows "(.*?)" message$/) do |arg1|
  last_response.should have_xpath( "//div[@id=\"message-board\"]") do |td|
    td.should contain( arg1 )
  end
end

