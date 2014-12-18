Given(/^I am shopping for puppies$/) do
  visit HomePage
end

Then(/^I should see "([^"]*)"$/) do |expected_message|
  expect(@current_page.text).to include expected_message
end

When(/^I complete an adoption$/) do
  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
  on(CheckoutPage).checkout
end

When(/^I attempt to checkout without an? (.+)$/) do |field|
  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
  on(CheckoutPage).checkout(field => '')
end

When(/^I am checking out$/) do
  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
end

Then(/^I should see the following payment options:$/) do |table|
  table.hashes.each do |hsh|
    expect(on(CheckoutPage).payment_options).to include hsh['option']
  end
end

Then(/^I should see the error message "([^"]*)"$/) do |the_message|
  expect(@current_page).to have_error_message the_message
end
