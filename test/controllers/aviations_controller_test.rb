require "test_helper"

class AviationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aviation = aviations(:one)
  end

  test "should get index" do
    get aviations_url
    assert_response :success
  end

  test "should get new" do
    get new_aviation_url
    assert_response :success
  end

  test "should create aviation" do
    assert_difference("Aviation.count") do
      post aviations_url, params: { aviation: {  } }
    end

    assert_redirected_to aviation_url(Aviation.last)
  end

  test "should show aviation" do
    get aviation_url(@aviation)
    assert_response :success
  end

  test "should get edit" do
    get edit_aviation_url(@aviation)
    assert_response :success
  end

  test "should update aviation" do
    patch aviation_url(@aviation), params: { aviation: {  } }
    assert_redirected_to aviation_url(@aviation)
  end

  test "should destroy aviation" do
    assert_difference("Aviation.count", -1) do
      delete aviation_url(@aviation)
    end

    assert_redirected_to aviations_url
  end
end
