require 'test_helper'

class TechnicalGoodsAssortmentsControllerTest < ActionController::TestCase
  setup do
    @technical_goods_assortment = technical_goods_assortments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technical_goods_assortments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technical_goods_assortment" do
    assert_difference('TechnicalGoodsAssortment.count') do
      post :create, technical_goods_assortment: { ap1_id: @technical_goods_assortment.ap1_id, ap2_id: @technical_goods_assortment.ap2_id, ap3_id: @technical_goods_assortment.ap3_id, ap4_id: @technical_goods_assortment.ap4_id, ap5_id: @technical_goods_assortment.ap5_id, ap6_id: @technical_goods_assortment.ap6_id, ap7_id: @technical_goods_assortment.ap7_id, ap8_id: @technical_goods_assortment.ap8_id, b1_id: @technical_goods_assortment.b1_id, b2_id: @technical_goods_assortment.b2_id, b3_id: @technical_goods_assortment.b3_id, b4_id: @technical_goods_assortment.b4_id, b5_id: @technical_goods_assortment.b5_id, b6_id: @technical_goods_assortment.b6_id }
    end

    assert_redirected_to technical_goods_assortment_path(assigns(:technical_goods_assortment))
  end

  test "should show technical_goods_assortment" do
    get :show, id: @technical_goods_assortment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technical_goods_assortment
    assert_response :success
  end

  test "should update technical_goods_assortment" do
    patch :update, id: @technical_goods_assortment, technical_goods_assortment: { ap1_id: @technical_goods_assortment.ap1_id, ap2_id: @technical_goods_assortment.ap2_id, ap3_id: @technical_goods_assortment.ap3_id, ap4_id: @technical_goods_assortment.ap4_id, ap5_id: @technical_goods_assortment.ap5_id, ap6_id: @technical_goods_assortment.ap6_id, ap7_id: @technical_goods_assortment.ap7_id, ap8_id: @technical_goods_assortment.ap8_id, b1_id: @technical_goods_assortment.b1_id, b2_id: @technical_goods_assortment.b2_id, b3_id: @technical_goods_assortment.b3_id, b4_id: @technical_goods_assortment.b4_id, b5_id: @technical_goods_assortment.b5_id, b6_id: @technical_goods_assortment.b6_id }
    assert_redirected_to technical_goods_assortment_path(assigns(:technical_goods_assortment))
  end

  test "should destroy technical_goods_assortment" do
    assert_difference('TechnicalGoodsAssortment.count', -1) do
      delete :destroy, id: @technical_goods_assortment
    end

    assert_redirected_to technical_goods_assortments_path
  end
end
