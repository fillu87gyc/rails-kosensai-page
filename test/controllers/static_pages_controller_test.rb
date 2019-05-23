require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_pages_index_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get access" do
    get static_pages_access_url
    assert_response :success
  end

  test "should get news" do
    get static_pages_news_url
    assert_response :success
  end

  test "should get shop" do
    get static_pages_shop_url
    assert_response :success
  end

end
