require 'test_helper'

class PrimaryAssortmentsControllerTest < ActionController::TestCase
  setup do
    @primary_assortment = primary_assortments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:primary_assortments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create primary_assortment" do
    assert_difference('PrimaryAssortment.count') do
      post :create, primary_assortment: { name: @primary_assortment.name }
    end

    assert_redirected_to primary_assortment_path(assigns(:primary_assortment))
  end

  test "should show primary_assortment" do
    get :show, id: @primary_assortment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @primary_assortment
    assert_response :success
  end

  test "should update primary_assortment" do
    patch :update, id: @primary_assortment, primary_assortment: { name: @primary_assortment.name }
    assert_redirected_to primary_assortment_path(assigns(:primary_assortment))
  end

  test "should destroy primary_assortment" do
    assert_difference('PrimaryAssortment.count', -1) do
      delete :destroy, id: @primary_assortment
    end

    assert_redirected_to primary_assortments_path
  end
end
