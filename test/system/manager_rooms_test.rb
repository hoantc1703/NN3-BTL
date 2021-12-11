require "application_system_test_case"

class ManagerRoomsTest < ApplicationSystemTestCase
  setup do
    @manager_room = manager_rooms(:one)
  end

  test "visiting the index" do
    visit manager_rooms_url
    assert_selector "h1", text: "Manager Rooms"
  end

  test "creating a Manager room" do
    visit manager_rooms_url
    click_on "New Manager Room"

    fill_in "Address", with: @manager_room.address
    fill_in "Email", with: @manager_room.email
    fill_in "First name", with: @manager_room.first_name
    fill_in "Last name", with: @manager_room.last_name
    fill_in "Phone", with: @manager_room.phone
    click_on "Create Manager room"

    assert_text "Manager room was successfully created"
    click_on "Back"
  end

  test "updating a Manager room" do
    visit manager_rooms_url
    click_on "Edit", match: :first

    fill_in "Address", with: @manager_room.address
    fill_in "Email", with: @manager_room.email
    fill_in "First name", with: @manager_room.first_name
    fill_in "Last name", with: @manager_room.last_name
    fill_in "Phone", with: @manager_room.phone
    click_on "Update Manager room"

    assert_text "Manager room was successfully updated"
    click_on "Back"
  end

  test "destroying a Manager room" do
    visit manager_rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manager room was successfully destroyed"
  end
end
