json.array!(@sales_specialists) do |sales_specialist|
  json.extract! sales_specialist, :id, :name, :phone
  json.url sales_specialist_url(sales_specialist, format: :json)
end
