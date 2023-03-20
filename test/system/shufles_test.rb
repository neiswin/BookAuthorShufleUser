require "application_system_test_case"

class ShuflesTest < ApplicationSystemTestCase
  setup do
    @shufle = shufles(:one)
  end

  test "visiting the index" do
    visit shufles_url
    assert_selector "h1", text: "Shufles"
  end

  test "should create shufle" do
    visit shufles_url
    click_on "New shufle"

    fill_in "Shufle name", with: @shufle.shufle_name
    click_on "Create Shufle"

    assert_text "Shufle was successfully created"
    click_on "Back"
  end

  test "should update Shufle" do
    visit shufle_url(@shufle)
    click_on "Edit this shufle", match: :first

    fill_in "Shufle name", with: @shufle.shufle_name
    click_on "Update Shufle"

    assert_text "Shufle was successfully updated"
    click_on "Back"
  end

  test "should destroy Shufle" do
    visit shufle_url(@shufle)
    click_on "Destroy this shufle", match: :first

    assert_text "Shufle was successfully destroyed"
  end
end
