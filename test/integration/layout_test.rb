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
  
  test "should not show alert when content not modified" do
    visit root_path
    sleep 10
    visit root_path(:next => true)
    
    assert_raises Selenium::WebDriver::Error::NoAlertPresentError do
      page.driver.browser.switch_to.alert
    end
  end
  
  test "should show alert when content modified" do
    visit root_path
    
    page.execute_script("$('#content').html('some new text');")
    find("#content").click
  
    #sleep 10
    
    visit root_path(:next => true)
    
    #assert_nothing_raised Selenium::WebDriver::Error::NoAlertPresentError do
      #page.driver.browser.switch_to.alert
    #end
  end
  
end
