require "application_system_test_case"

class AviationsTest < ApplicationSystemTestCase
  setup do
    @aviation = aviations(:one)
  end

  test "visiting the index" do
    visit aviations_url
    assert_selector "h1", text: "Aviations"
  end

  test "should create aviation" do
    visit aviations_url
    click_on "New aviation"

    click_on "Create Aviation"

    assert_text "Aviation was successfully created"
    click_on "Back"
  end

  test "should update Aviation" do
    visit aviation_url(@aviation)
    click_on "Edit this aviation", match: :first

    click_on "Update Aviation"

    assert_text "Aviation was successfully updated"
    click_on "Back"
  end

  test "should destroy Aviation" do
    visit aviation_url(@aviation)
    click_on "Destroy this aviation", match: :first

    assert_text "Aviation was successfully destroyed"
  end
end
