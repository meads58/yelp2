Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Then(/^the link "(.*?)"$/) do |link|
  expect(page).to have_link link
end

When(/^I enter in a new restaurant "(.*?)"$/) do |name|
  click_link "Add a new restaurant"
  fill_in 'Name', :with => name
end

When(/^with a review of "(.*?)"$/) do |rating|
  fill_in 'Rating', :with => rating
end

Then(/^with a rating of "(.*?)"$/) do |rating|
  expect(page).to have_content rating
end

When(/^press "(.*?)"$/) do |button_name|
  click_on button_name
end

When(/^click on link "(.*?)"$/) do |link|
  click_link link
end

Then(/^I can enter a review of "(.*?)"$/) do |review|
  fill_in 'Review', :with => review
end

Then(/^see my review "(.*?)"$/) do |review|
  expect(page).to have_content review
end

