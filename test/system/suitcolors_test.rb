require "application_system_test_case"

class SuitcolorsTest < ApplicationSystemTestCase
  setup do
    @suitcolor = suitcolors(:one)
  end

  test "visiting the index" do
    visit suitcolors_url
    assert_selector "h1", text: "Suitcolors"
  end

  test "creating a Suitcolor" do
    visit suitcolors_url
    click_on "New Suitcolor"

    fill_in "Description", with: @suitcolor.description
    fill_in "Title", with: @suitcolor.title
    click_on "Create Suitcolor"

    assert_text "Suitcolor was successfully created"
    click_on "Back"
  end

  test "updating a Suitcolor" do
    visit suitcolors_url
    click_on "Edit", match: :first

    fill_in "Description", with: @suitcolor.description
    fill_in "Title", with: @suitcolor.title
    click_on "Update Suitcolor"

    assert_text "Suitcolor was successfully updated"
    click_on "Back"
  end

  test "destroying a Suitcolor" do
    visit suitcolors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suitcolor was successfully destroyed"
  end
end
