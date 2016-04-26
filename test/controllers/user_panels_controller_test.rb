require 'test_helper'

class UserPanelsControllerTest < ActionController::TestCase
  test "should get title:string" do
    get :title:string
    assert_response :success
  end

  test "should get ingredient:string" do
    get :ingredient:string
    assert_response :success
  end

  test "should get seasoning:string" do
    get :seasoning:string
    assert_response :success
  end

  test "should get user_id:integer" do
    get :user_id:integer
    assert_response :success
  end

end
