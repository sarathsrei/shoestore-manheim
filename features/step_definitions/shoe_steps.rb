Given /^I am on the site "([^"]*)"$/ do |url|
  pending
end

Then /^A shoe with brand "([^"]*)"$/ do |brand|
  ShoeFactory.create :brand => brand
end

Given /^(\d+) shoes$/ do |number_of_shoes|
  pending
end

Given /^A shoe for month: (.*)$/ do |month|
  pending
end

When /^I search for brand "([^"]*)"$/ do |brand|
  pending
end

When /^I view all shoes$/ do
  pending
end

Then /^I should see (\d+) shoe$/ do |number_of_shoes|
  pending
end

Then /^I should see (\d+) shoes$/ do |number_of_shoes|
  pending
end

Then /^I should see (\d+) shoe for month: (.*)$/ do |number_of_shoes, month|
  pending
end

Then /^I enter the invalide promotion code (.*)$/ do |promotion_code|
  pending
end

Then /^I hit on Submit button $/ do |button|
  pending
end

Then /^I should see error message (.*)$/ do |error_message|
  pending
end