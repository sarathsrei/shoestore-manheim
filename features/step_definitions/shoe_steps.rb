Given /^I am on the shoe store site$/ do |url|
  ShoeStore.new($browser).open
end

Then /^I enter shoe brand  "([^"]*)"$/ do |brand|
    ShoeStore.new($browser).shoe_brand
end

When /^I click search to display the shoes$/ do
  ShoeStore.click_shoes
end

When /^I view all shoes$/ do
  ShoeStore.view_all_shoes
end

Then /^I should see all shoes$/ do
  ShoeStore.count_all_shoes
end

Given(/^I click on "(.*?)"$/) do |month|
  ShoeStore.new($browser).click_month(month)
end

Then (/^I should see shoes displayed on the page$/) do
  expect(LandingPage.new($browser).shoes_present?).to be true
end

Then(/^I should see a suggested price for each shoe$/) do
  expect(LandingPage.new($browser).prices_present?).to be true
end

Then(/^I should see a small blurb for each shoe$/) do
  expect(LandingPage.new($browser).blurbs_present?).to be true
end

Then(/^I should see an image for each shoe$/) do
  expect(LandingPage.new($browser).images_present?).to be true
end

Then(/^a text field for email should be present$/) do
  expect(LandingPage.new($browser).textfield_exists?).to be true
end

When(/^I enter my "([^"]*)" into the form field$/) do |email|
  @email = email
  @landingpage = LandingPage.new($browser)
  @homepage.input_email(@email)
end

When(/^I click button to submit email$/) do
  @landingpage.submit_email
end

Then(/^I should see confirmation message$/) do
  expect("#{@landingpage.text}").to eql("Thanks! We will notify you the update on the shoe by email: #{@email}")
end