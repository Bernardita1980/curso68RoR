require "application_system_test_case"

class EnsaladasTest < ApplicationSystemTestCase
  setup do
    @ensalada = ensaladas(:one)
  end

  test "visiting the index" do
    visit ensaladas_url
    assert_selector "h1", text: "Ensaladas"
  end

  test "creating a Ensalada" do
    visit ensaladas_url
    click_on "New Ensalada"

    fill_in "Nombre", with: @ensalada.nombre
    fill_in "Precio", with: @ensalada.precio
    click_on "Create Ensalada"

    assert_text "Ensalada was successfully created"
    click_on "Back"
  end

  test "updating a Ensalada" do
    visit ensaladas_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @ensalada.nombre
    fill_in "Precio", with: @ensalada.precio
    click_on "Update Ensalada"

    assert_text "Ensalada was successfully updated"
    click_on "Back"
  end

  test "destroying a Ensalada" do
    visit ensaladas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ensalada was successfully destroyed"
  end
end
