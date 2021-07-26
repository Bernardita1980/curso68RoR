require "application_system_test_case"

class EditorialsTest < ApplicationSystemTestCase
  setup do
    @editorial = editorials(:one)
  end

  test "visiting the index" do
    visit editorials_url
    assert_selector "h1", text: "Editorials"
  end

  test "creating a Editorial" do
    visit editorials_url
    click_on "New Editorial"

    fill_in "Nombre", with: @editorial.nombre
    click_on "Create Editorial"

    assert_text "Editorial was successfully created"
    click_on "Back"
  end

  test "updating a Editorial" do
    visit editorials_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @editorial.nombre
    click_on "Update Editorial"

    assert_text "Editorial was successfully updated"
    click_on "Back"
  end

  test "destroying a Editorial" do
    visit editorials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Editorial was successfully destroyed"
  end
end
