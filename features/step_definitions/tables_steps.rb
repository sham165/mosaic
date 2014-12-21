Given(/^I am on the State Population page$/) do
  visit StatePopulationPage
end

Then(/^I should see that these states have gt (\d+) population$/) do |amount, table|
  states = on(StatePopulationPage).population_greater_than(amount.to_i)
  table.hashes.each do |hsh|
    expect(states).to include hsh['states']
  end
end