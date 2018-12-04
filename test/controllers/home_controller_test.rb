require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get jero" do
    get home_jero_url
    assert_response :success
  end

  test "should get mafe" do
    get home_mafe_url
    assert_response :success
  end

  test "should get chanel" do
    get home_chanel_url
    assert_response :success
  end

end
