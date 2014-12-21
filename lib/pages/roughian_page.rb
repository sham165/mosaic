class RoughianPage
  include PageObject

  page_url 'http://examples.roughian.com/#Home'

  div(:panel_div, text: 'Panels')
  div(:html_panel, text: 'HTMLPanel')
  text_field(:the_value) do |page|
    page.div_element(id: 'two').when_visible.text_field_element
  end

  def panels
    panel_div_element.when_present.click
  end

  def html_view
    html_panel_element.when_present(10).click
  end
end