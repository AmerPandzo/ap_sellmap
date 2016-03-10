json.array!(@assets) do |asset|
  json.extract! asset, :id, :position, :class_type, :alt, :attachment_width, :attachment_height
  json.url asset_url(asset, format: :json)
end
