$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec'
require 'page-object'
require 'require_all'
require 'data_magic'

require_all 'lib'


World(PageObject::PageFactory)

PageObject::PageFactory.routes = {
    default: [[HomePage, :select_puppy],
              [DetailsPage, :add_to_cart],
              [ShoppingCartPage, :proceed_to_checkout],
              [CheckoutPage, :checkout]],
    process_order_route: [[LoginPage, :login_to_system],
                          [LandingPage, :view_adoptions],
                          [ProcessPuppyPage, :process_puppy]]
}
