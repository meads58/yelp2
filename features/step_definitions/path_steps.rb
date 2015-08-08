Given(/^I am on the "(.*?)" page$/) do |path|
  visit "/#{path}"
end