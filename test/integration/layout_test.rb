require 'test_helper'

class LayoutTest < ActiveSupport::IntegrationCase
  setup do
    Capybara.current_driver = Capybara.javascript_driver # :selenium by default
  end
  
  test "should have js && css files" do
    visit root_path
    
    assert page.has_selector?('link[href="/assets/sunrise-aloha/application.css"]')
    assert page.has_selector?('script[src="/assets/application.js"]')
    assert page.has_selector?('script[src="/assets/aloha/plugins/common/format/lib/format-plugin.js"]')
  end
  
  test "should initialize aloha editor" do
    visit root_path
    assert page.current_path, root_path
    
    assert page.has_selector?('div.aloha-editable[id="content"]')
    assert page.has_selector?('div.aloha-sidebar-bar')
    #save_and_open_page
  end
  
end
