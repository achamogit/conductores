require 'test_helper'

class AlternativasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get menu0" do
    get :menu0
    assert_response :success
  end

  test "should get menu1" do
    get :menu1
    assert_response :success
  end

  test "should get menu2" do
    get :menu2
    assert_response :success
  end

  test "should get menu3" do
    get :menu3
    assert_response :success
  end

  test "should get menu4" do
    get :menu4
    assert_response :success
  end

end
