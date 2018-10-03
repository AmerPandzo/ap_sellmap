require 'test_helper'

class ApProductsControllerTest < ActionController::TestCase
  setup do
    @ap_product = ap_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ap_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ap_product" do
    assert_difference('ApProduct.count') do
      post :create, ap_product: { name: @ap_product.name }
    end

    assert_redirected_to ap_product_path(assigns(:ap_product))
  end

  test "should show ap_product" do
    get :show, id: @ap_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ap_product
    assert_response :success
  end

  test "should update ap_product" do
    patch :update, id: @ap_product, ap_product: { name: @ap_product.name }
    assert_redirected_to ap_product_path(assigns(:ap_product))
  end

  test "should destroy ap_product" do
    assert_difference('ApProduct.count', -1) do
      delete :destroy, id: @ap_product
    end

    assert_redirected_to ap_products_path
  end
end
