json.array!(@bank_data) do |bank_datum|
  json.extract! bank_datum, :id
  json.url bank_datum_url(bank_datum, format: :json)
end
