json.array!(@technical_goods_assortments) do |technical_goods_assortment|
  json.extract! technical_goods_assortment, :id, :ap1_id, :ap2_id, :ap3_id, :ap4_id, :ap5_id, :ap6_id, :ap7_id, :ap8_id, :b1_id, :b2_id, :b3_id, :b4_id, :b5_id, :b6_id
  json.url technical_goods_assortment_url(technical_goods_assortment, format: :json)
end
