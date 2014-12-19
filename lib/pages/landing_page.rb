require_relative 'navigation_panel'

class LandingPage
  include PageObject
  include NavigationPanel

  page_url 'http://puppies.herokuapp.com/admin'


end