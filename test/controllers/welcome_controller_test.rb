require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "GET index" do
    get :index
    assert_response :success
  end
  
  test "should have contenteditable div" do
    get :index
    
    assert_tag "div", :attributes => {:contenteditable => "true", :id => "content"}
  end
end
