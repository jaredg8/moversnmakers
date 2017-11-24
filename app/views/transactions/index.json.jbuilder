json.array!(@transactions) do |transaction|
  json.extract! transaction, :id
  json.start transaction.start_date
  json.end transaction.end_date
  json.title transaction.item.name
  json.description transaction.item.description
  json.url item_url(transaction.item, format: :html)
  json.color (transaction.user == transaction.item.user ? '#FF3300' : '#FF4466')
end
