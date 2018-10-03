require 'test_helper'

class ApBrandsControllerTest < ActionController::TestCase
  setup do
    @ap_brand = ap_brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ap_brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ap_brand" do
    assert_difference('ApBrand.count') do
      post :create, ap_brand: { name: @ap_brand.name }
    end

    assert_redirected_to ap_brand_path(assigns(:ap_brand))
  end

  test "should show ap_brand" do
    get :show, id: @ap_brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ap_brand
    assert_response :success
  end

  test "should update ap_brand" do
    patch :update, id: @ap_brand, ap_brand: { name: @ap_brand.name }
    assert_redirected_to ap_brand_path(assigns(:ap_brand))
  end

  test "should destroy ap_brand" do
    assert_difference('ApBrand.count', -1) do
      delete :destroy, id: @ap_brand
    end

    assert_redirected_to ap_brands_path
  end
end
