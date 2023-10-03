require "application_system_test_case"

class CampsTest < ApplicationSystemTestCase
  setup do
    @camp = camps(:one)
  end

  test "visiting the index" do
    visit camps_url
    assert_selector "h1", text: "Camps"
  end

  test "should create camp" do
    visit camps_url
    click_on "New camp"

    fill_in "Attendee age", with: @camp.attendee_age
    fill_in "Attendee first name", with: @camp.attendee_first_name
    fill_in "Attendee last name", with: @camp.attendee_last_name
    fill_in "Camp date", with: @camp.camp_date
    fill_in "Comments", with: @camp.comments
    fill_in "Email", with: @camp.email
    fill_in "Parent first name", with: @camp.parent_first_name
    fill_in "Parent last name", with: @camp.parent_last_name
    fill_in "Phone", with: @camp.phone
    click_on "Create Camp"

    assert_text "Camp was successfully created"
    click_on "Back"
  end

  test "should update Camp" do
    visit camp_url(@camp)
    click_on "Edit this camp", match: :first

    fill_in "Attendee age", with: @camp.attendee_age
    fill_in "Attendee first name", with: @camp.attendee_first_name
    fill_in "Attendee last name", with: @camp.attendee_last_name
    fill_in "Camp date", with: @camp.camp_date
    fill_in "Comments", with: @camp.comments
    fill_in "Email", with: @camp.email
    fill_in "Parent first name", with: @camp.parent_first_name
    fill_in "Parent last name", with: @camp.parent_last_name
    fill_in "Phone", with: @camp.phone
    click_on "Update Camp"

    assert_text "Camp was successfully updated"
    click_on "Back"
  end

  test "should destroy Camp" do
    visit camp_url(@camp)
    click_on "Destroy this camp", match: :first

    assert_text "Camp was successfully destroyed"
  end
end
