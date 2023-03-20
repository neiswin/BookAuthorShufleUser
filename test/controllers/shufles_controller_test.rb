require "test_helper"

class ShuflesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shufle = shufles(:one)
  end

  test "should get index" do
    get shufles_url
    assert_response :success
  end

  test "should get new" do
    get new_shufle_url
    assert_response :success
  end

  test "should create shufle" do
    assert_difference("Shufle.count") do
      post shufles_url, params: { shufle: { shufle_name: @shufle.shufle_name } }
    end

    assert_redirected_to shufle_url(Shufle.last)
  end

  test "should show shufle" do
    get shufle_url(@shufle)
    assert_response :success
  end

  test "should get edit" do
    get edit_shufle_url(@shufle)
    assert_response :success
  end

  test "should update shufle" do
    patch shufle_url(@shufle), params: { shufle: { shufle_name: @shufle.shufle_name } }
    assert_redirected_to shufle_url(@shufle)
  end

  test "should destroy shufle" do
    assert_difference("Shufle.count", -1) do
      delete shufle_url(@shufle)
    end

    assert_redirected_to shufles_url
  end
end
