Given(/^I am shopping for puppies$/) do
  visit HomePage
end

Then(/^I should see "([^"]*)"$/) do |expected_message|
  expect(@current_page.text).to include expected_message
end

When(/^I complete an adoption$/) do
  navigate_all
end

When(/^I attempt to checkout without an? (.+)$/) do |field|
  navigate_to(CheckoutPage).checkout(field => '')
end

When(/^I am checking out$/) do
  navigate_to(CheckoutPage)
end

Then(/^I should see the following payment options:$/) do |table|
  table.hashes.each do |hsh|
    expect(on(CheckoutPage).payment_options).to include hsh['option']
  end
end

Then(/^I should see the error message "([^"]*)"$/) do |the_message|
  expect(@current_page).to have_error_message the_message
end


When(/^I print the value for (today)$/) do |today|
  puts today
end

And(/^I print the value for (tomorrow)$/) do |tomorrow|
  puts tomorrow
end

And(/^I added (line item \d+)$/) do |item|
  puts item.class
end

And(/^I print the value for (\d+ days from today)$/) do |date|
  puts date
end

Then(/^I am happy$/) do
  puts "Yeah!!!"
end

Given(/^I have an order for "([^"]*)"$/) do |name|
  navigate_to(CheckoutPage).checkout('name' => name)
  @order_name = name
end

When(/^I process that order$/) do
  visit LandingPage
  navigate_to(ProcessPuppyPage, using: :process_order_route).process_puppy(@order_name)
end