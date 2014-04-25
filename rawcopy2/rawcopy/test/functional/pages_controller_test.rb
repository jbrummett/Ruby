require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get veganinfo" do
    get :veganinfo
    assert_response :success
  end

  test "should get gluteninfo" do
    get :gluteninfo
    assert_response :success
  end

  test "should get market" do
    get :market
    assert_response :success
  end

  test "should get restaurant" do
    get :restaurant
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
