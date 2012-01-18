require 'test_helper'

class LayoutTest < ActiveSupport::IntegrationCase
  setup do
    Capybara.current_driver = Capybara.javascript_driver # :selenium by default
  end
  
  test "should initialize aloha editor" do
    visit root_path
    assert page.current_path, root_path
    
    
    #save_and_open_page
  end
  
end
