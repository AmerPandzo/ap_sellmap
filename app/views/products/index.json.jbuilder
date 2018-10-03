json.array!(@ap_products) do |ap_product|
  json.extract! ap_product, :id, :name
  json.url ap_product_url(ap_product, format: :json)
end
