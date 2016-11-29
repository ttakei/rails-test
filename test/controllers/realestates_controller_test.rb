require 'test_helper'

class RealestatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @realestate = realestates(:one)
  end

  test "should get index" do
    get realestates_url
    assert_response :success
  end

  test "should get new" do
    get new_realestate_url
    assert_response :success
  end

  test "should create realestate" do
    assert_difference('Realestate.count') do
      post realestates_url, params: { realestate: { address: @realestate.address, age: @realestate.age, distance_walk1: @realestate.distance_walk1, distance_walk2: @realestate.distance_walk2, name: @realestate.name, remarks: @realestate.remarks, rent: @realestate.rent, route1: @realestate.route1, route2: @realestate.route2, station1: @realestate.station1, station2: @realestate.station2 } }
    end

    assert_redirected_to realestate_url(Realestate.last)
  end

  test "should show realestate" do
    get realestate_url(@realestate)
    assert_response :success
  end

  test "should get edit" do
    get edit_realestate_url(@realestate)
    assert_response :success
  end

  test "should update realestate" do
    patch realestate_url(@realestate), params: { realestate: { address: @realestate.address, age: @realestate.age, distance_walk1: @realestate.distance_walk1, distance_walk2: @realestate.distance_walk2, name: @realestate.name, remarks: @realestate.remarks, rent: @realestate.rent, route1: @realestate.route1, route2: @realestate.route2, station1: @realestate.station1, station2: @realestate.station2 } }
    assert_redirected_to realestate_url(@realestate)
  end

  test "should destroy realestate" do
    assert_difference('Realestate.count', -1) do
      delete realestate_url(@realestate)
    end

    assert_redirected_to realestates_url
  end
end
