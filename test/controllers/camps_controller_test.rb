require "test_helper"

class CampsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camp = camps(:one)
  end

  test "should get index" do
    get camps_url
    assert_response :success
  end

  test "should get new" do
    get new_camp_url
    assert_response :success
  end

  test "should create camp" do
    assert_difference("Camp.count") do
      post camps_url, params: { camp: { attendee_age: @camp.attendee_age, attendee_first_name: @camp.attendee_first_name, attendee_last_name: @camp.attendee_last_name, camp_date: @camp.camp_date, comments: @camp.comments, email: @camp.email, parent_first_name: @camp.parent_first_name, parent_last_name: @camp.parent_last_name, phone: @camp.phone } }
    end

    assert_redirected_to camp_url(Camp.last)
  end

  test "should show camp" do
    get camp_url(@camp)
    assert_response :success
  end

  test "should get edit" do
    get edit_camp_url(@camp)
    assert_response :success
  end

  test "should update camp" do
    patch camp_url(@camp), params: { camp: { attendee_age: @camp.attendee_age, attendee_first_name: @camp.attendee_first_name, attendee_last_name: @camp.attendee_last_name, camp_date: @camp.camp_date, comments: @camp.comments, email: @camp.email, parent_first_name: @camp.parent_first_name, parent_last_name: @camp.parent_last_name, phone: @camp.phone } }
    assert_redirected_to camp_url(@camp)
  end

  test "should destroy camp" do
    assert_difference("Camp.count", -1) do
      delete camp_url(@camp)
    end

    assert_redirected_to camps_url
  end
end
