Given(/^I am on the Roughian home page$/) do
  visit RoughianPage
end

When(/^the HTMLView is visible$/) do
  on(RoughianPage).html_view
end

Then(/^I can enter "([^"]*)" into the text field$/) do |value|
  on(RoughianPage).the_value = value
end