require 'test_helper'

class HsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @h = hs(:one)
  end

  test "should get index" do
    get hs_url
    assert_response :success
  end

  test "should get new" do
    get new_h_url
    assert_response :success
  end

  test "should create h" do
    assert_difference('H.count') do
      post hs_url, params: { h: { city: @h.city, country: @h.country, name: @h.name, school_id: @h.school_id, state: @h.state } }
    end

    assert_redirected_to h_url(H.last)
  end

  test "should show h" do
    get h_url(@h)
    assert_response :success
  end

  test "should get edit" do
    get edit_h_url(@h)
    assert_response :success
  end

  test "should update h" do
    patch h_url(@h), params: { h: { city: @h.city, country: @h.country, name: @h.name, school_id: @h.school_id, state: @h.state } }
    assert_redirected_to h_url(@h)
  end

  test "should destroy h" do
    assert_difference('H.count', -1) do
      delete h_url(@h)
    end

    assert_redirected_to hs_url
  end
end
