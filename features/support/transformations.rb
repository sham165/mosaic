
Transform(/^line item (\d+)$/) do |item|
  item.to_i
end

Transform(/^(today)$/) do |today|
  Date.today
end

Transform(/^(tomorrow)$/) do |tomorrow|
  Date.today + 1
end

Transform(/^(\d+) days from today$/) do |days|
  Date.today + days.to_i
end
