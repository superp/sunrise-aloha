require 'test_helper'

class LayoutTest < ActionDispatch::IntegrationTest
  setup do
    Capybara.current_driver = Capybara.javascript_driver # :selenium by default
  end

  test "GET root_path" do
    get root_path
    
    assert_equal root_path, path
    assert_response :success
  end
  
  test "should have js && css files" do
    get root_path

    assert_select "script", {:count => 1} do
      assert_select "[src=?]", "/assets/sunrise-aloha/application.js"
    end
    
    assert_select "link", {:count => 1} do
      assert_select "[href=?]", "/assets/sunrise-aloha/application.css"
    end
  end
  
  test "should initialize aloha editor" do
    visit root_path
    assert page.current_path, root_path
    
    
    #save_and_open_page
  end
  
end
