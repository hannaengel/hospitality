require "application_system_test_case"

class AgendaItemsTest < ApplicationSystemTestCase
  setup do
    @agenda_item = agenda_items(:one)
  end

  test "visiting the index" do
    visit agenda_items_url
    assert_selector "h1", text: "Agenda Items"
  end

  test "creating a Agenda item" do
    visit agenda_items_url
    click_on "New Agenda Item"

    fill_in "Title", with: @agenda_item.title
    click_on "Create Agenda item"

    assert_text "Agenda item was successfully created"
    click_on "Back"
  end

  test "updating a Agenda item" do
    visit agenda_items_url
    click_on "Edit", match: :first

    fill_in "Title", with: @agenda_item.title
    click_on "Update Agenda item"

    assert_text "Agenda item was successfully updated"
    click_on "Back"
  end

  test "destroying a Agenda item" do
    visit agenda_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agenda item was successfully destroyed"
  end
end
