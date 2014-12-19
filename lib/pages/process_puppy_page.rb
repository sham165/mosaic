class ProcessPuppyPage
  include PageObject

  divs(:name, class: 'name')
  buttons(:process, value: 'Process Puppy')

  def process_puppy(name = 'Mickey Mouse')
    index = name_elements.find_index {|div| div.text.include? name}
    process_elements[index].click
  end
end