json.array!(@locations_assortments) do |locations_assortment|
  json.extract! locations_assortment, :id, :assortment_id, :location_id
  json.url locations_assortment_url(locations_assortment, format: :json)
end
