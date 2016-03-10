require 'test_helper'

class LocationsAssortmentsControllerTest < ActionController::TestCase
  setup do
    @locations_assortment = locations_assortments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations_assortments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locations_assortment" do
    assert_difference('LocationsAssortment.count') do
      post :create, locations_assortment: { assortment_id: @locations_assortment.assortment_id, location_id: @locations_assortment.location_id }
    end

    assert_redirected_to locations_assortment_path(assigns(:locations_assortment))
  end

  test "should show locations_assortment" do
    get :show, id: @locations_assortment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locations_assortment
    assert_response :success
  end

  test "should update locations_assortment" do
    patch :update, id: @locations_assortment, locations_assortment: { assortment_id: @locations_assortment.assortment_id, location_id: @locations_assortment.location_id }
    assert_redirected_to locations_assortment_path(assigns(:locations_assortment))
  end

  test "should destroy locations_assortment" do
    assert_difference('LocationsAssortment.count', -1) do
      delete :destroy, id: @locations_assortment
    end

    assert_redirected_to locations_assortments_path
  end
end
