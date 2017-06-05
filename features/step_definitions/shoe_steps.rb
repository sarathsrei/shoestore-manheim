require 'watir-webdriver'
require 'watir'
require 'cucumber'

Given /^I am on the shoe store site$/ do |url|
  @browser = Watir::Browser.new:chrome
  @browser.goto "http://shoestore-manheim.rhcloud.com/"
end

Then /^I enter shoe brand  "([^"]*)"$/ do |brand|
  @browser.select_list(:id, "brand").select "brand"
end

When /^I click search to display the shoes$/ do
  @browser.button(:id, "search_button").click
end

Given /^A shoe for month: (.*)$/ do |month|
   @browser.ul(:url, "href="/months/january"").click"{month}"
end

When /^I view all shoes$/ do
  @browser.link(:url, "href="/shoes"").click
end

Then /^I should see all shoes$/ do
  @browser.ul(:id, "shoe_list").visible.lis.length
end

Then /^I should see (\d+) shoe for month: (.*)$/ do |month|
  pending
end

Then /^I enter the invalide promotion code (.*)$/ do |promotion_code|
  @browser.text_field(:id, "promo_code_input").set("promotion_code")
end

Then /^I hit on Submit button $/ do |button|
  @browser.button(:input, "submit").click
end

Then(/^I should see error message "([^"]*)"$/) do |arg1|
   Watir::Wait.until { @browser.text.include? arg1}
end