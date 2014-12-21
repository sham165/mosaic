class StatePopulationPage
  include PageObject

  page_url 'http://en.wikipedia.org/wiki/List_of_U.S._states_and_territories_by_population'

  table(:population, class: 'wikitable')

  def population_greater_than(amount)
    states = []
    population_element.each do |row|
      unless row.class_name.include? 'sortbottom'
        states << row[2].text.strip if number_from_cell(row[3]) >= amount
      end
    end
    states
  end

  private

  def number_from_cell(cell)
    cell.text.gsub(',', '').to_i
  end
end