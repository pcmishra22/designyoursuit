require "test_helper"

class SuitcolorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suitcolor = suitcolors(:one)
  end

  test "should get index" do
    get suitcolors_url
    assert_response :success
  end

  test "should get new" do
    get new_suitcolor_url
    assert_response :success
  end

  test "should create suitcolor" do
    assert_difference('Suitcolor.count') do
      post suitcolors_url, params: { suitcolor: { description: @suitcolor.description, title: @suitcolor.title } }
    end

    assert_redirected_to suitcolor_url(Suitcolor.last)
  end

  test "should show suitcolor" do
    get suitcolor_url(@suitcolor)
    assert_response :success
  end

  test "should get edit" do
    get edit_suitcolor_url(@suitcolor)
    assert_response :success
  end

  test "should update suitcolor" do
    patch suitcolor_url(@suitcolor), params: { suitcolor: { description: @suitcolor.description, title: @suitcolor.title } }
    assert_redirected_to suitcolor_url(@suitcolor)
  end

  test "should destroy suitcolor" do
    assert_difference('Suitcolor.count', -1) do
      delete suitcolor_url(@suitcolor)
    end

    assert_redirected_to suitcolors_url
  end
end
