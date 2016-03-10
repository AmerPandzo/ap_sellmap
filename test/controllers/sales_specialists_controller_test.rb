require 'test_helper'

class SalesSpecialistsControllerTest < ActionController::TestCase
  setup do
    @sales_specialist = sales_specialists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_specialists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_specialist" do
    assert_difference('SalesSpecialist.count') do
      post :create, sales_specialist: { name: @sales_specialist.name, phone: @sales_specialist.phone }
    end

    assert_redirected_to sales_specialist_path(assigns(:sales_specialist))
  end

  test "should show sales_specialist" do
    get :show, id: @sales_specialist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_specialist
    assert_response :success
  end

  test "should update sales_specialist" do
    patch :update, id: @sales_specialist, sales_specialist: { name: @sales_specialist.name, phone: @sales_specialist.phone }
    assert_redirected_to sales_specialist_path(assigns(:sales_specialist))
  end

  test "should destroy sales_specialist" do
    assert_difference('SalesSpecialist.count', -1) do
      delete :destroy, id: @sales_specialist
    end

    assert_redirected_to sales_specialists_path
  end
end
