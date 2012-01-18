require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "GET index" do
    get :index
    assert_response :success
  end
  
  test "should have js && css files" do
    get :index

    assert_select "script", {:count => 1} do
      assert_select "[src=?]", "/assets/sunrise-aloha/application.js"
    end
    
    assert_select "link", {:count => 1} do
      assert_select "[href=?]", "/assets/sunrise-aloha/application.css"
    end
  end
end
