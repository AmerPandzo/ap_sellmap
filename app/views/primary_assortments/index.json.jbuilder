json.array!(@primary_assortments) do |primary_assortment|
  json.extract! primary_assortment, :id, :name
  json.url primary_assortment_url(primary_assortment, format: :json)
end
