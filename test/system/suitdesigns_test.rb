require "application_system_test_case"

class SuitdesignsTest < ApplicationSystemTestCase
  setup do
    @suitdesign = suitdesigns(:one)
  end

  test "visiting the index" do
    visit suitdesigns_url
    assert_selector "h1", text: "Suitdesigns"
  end

  test "creating a Suitdesign" do
    visit suitdesigns_url
    click_on "New Suitdesign"

    fill_in "Description", with: @suitdesign.description
    fill_in "Title", with: @suitdesign.title
    click_on "Create Suitdesign"

    assert_text "Suitdesign was successfully created"
    click_on "Back"
  end

  test "updating a Suitdesign" do
    visit suitdesigns_url
    click_on "Edit", match: :first

    fill_in "Description", with: @suitdesign.description
    fill_in "Title", with: @suitdesign.title
    click_on "Update Suitdesign"

    assert_text "Suitdesign was successfully updated"
    click_on "Back"
  end

  test "destroying a Suitdesign" do
    visit suitdesigns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suitdesign was successfully destroyed"
  end
end
