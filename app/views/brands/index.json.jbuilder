json.array!(@ap_brands) do |ap_brand|
  json.extract! ap_brand, :id, :name
  json.url ap_brand_url(ap_brand, format: :json)
end
