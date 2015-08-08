Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Then(/^the link "(.*?)"$/) do |link|
  expect(page).to have_link link
end