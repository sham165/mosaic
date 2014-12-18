RSpec::Matchers.define :have_error_message do |the_message|
  match do |page|
    page.errors.include? the_message
  end

  failure_message do |page|
    "Expected '#{page.errors}' to include '#{the_message}'"
  end

  failure_message_when_negated do |page|
    "Expected '#{page.errors}' not to include '#{the_message}'"
  end
end