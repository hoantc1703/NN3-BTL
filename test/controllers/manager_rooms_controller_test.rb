require 'test_helper'

class ManagerRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manager_room = manager_rooms(:one)
  end

  test "should get index" do
    get manager_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_manager_room_url
    assert_response :success
  end

  test "should create manager_room" do
    assert_difference('ManagerRoom.count') do
      post manager_rooms_url, params: { manager_room: { address: @manager_room.address, email: @manager_room.email, first_name: @manager_room.first_name, last_name: @manager_room.last_name, phone: @manager_room.phone } }
    end

    assert_redirected_to manager_room_url(ManagerRoom.last)
  end

  test "should show manager_room" do
    get manager_room_url(@manager_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_manager_room_url(@manager_room)
    assert_response :success
  end

  test "should update manager_room" do
    patch manager_room_url(@manager_room), params: { manager_room: { address: @manager_room.address, email: @manager_room.email, first_name: @manager_room.first_name, last_name: @manager_room.last_name, phone: @manager_room.phone } }
    assert_redirected_to manager_room_url(@manager_room)
  end

  test "should destroy manager_room" do
    assert_difference('ManagerRoom.count', -1) do
      delete manager_room_url(@manager_room)
    end

    assert_redirected_to manager_rooms_url
  end
end
