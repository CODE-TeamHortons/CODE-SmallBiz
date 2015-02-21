require 'test_helper'

class MatchControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
