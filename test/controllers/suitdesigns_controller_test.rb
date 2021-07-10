require "test_helper"

class SuitdesignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suitdesign = suitdesigns(:one)
  end

  test "should get index" do
    get suitdesigns_url
    assert_response :success
  end

  test "should get new" do
    get new_suitdesign_url
    assert_response :success
  end

  test "should create suitdesign" do
    assert_difference('Suitdesign.count') do
      post suitdesigns_url, params: { suitdesign: { description: @suitdesign.description, title: @suitdesign.title } }
    end

    assert_redirected_to suitdesign_url(Suitdesign.last)
  end

  test "should show suitdesign" do
    get suitdesign_url(@suitdesign)
    assert_response :success
  end

  test "should get edit" do
    get edit_suitdesign_url(@suitdesign)
    assert_response :success
  end

  test "should update suitdesign" do
    patch suitdesign_url(@suitdesign), params: { suitdesign: { description: @suitdesign.description, title: @suitdesign.title } }
    assert_redirected_to suitdesign_url(@suitdesign)
  end

  test "should destroy suitdesign" do
    assert_difference('Suitdesign.count', -1) do
      delete suitdesign_url(@suitdesign)
    end

    assert_redirected_to suitdesigns_url
  end
end
