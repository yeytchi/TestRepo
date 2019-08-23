require "application_system_test_case"

class MonumentsTest < ApplicationSystemTestCase
  setup do
    @monument = monuments(:one)
  end

  test "visiting the index" do
    visit monuments_url
    assert_selector "h1", text: "Monuments"
  end

  test "creating a Monument" do
    visit monuments_url
    click_on "New Monument"

    fill_in "Address", with: @monument.address
    fill_in "Name", with: @monument.name
    click_on "Create Monument"

    assert_text "Monument was successfully created"
    click_on "Back"
  end

  test "updating a Monument" do
    visit monuments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @monument.address
    fill_in "Name", with: @monument.name
    click_on "Update Monument"

    assert_text "Monument was successfully updated"
    click_on "Back"
  end

  test "destroying a Monument" do
    visit monuments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monument was successfully destroyed"
  end
end
