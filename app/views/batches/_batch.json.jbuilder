json.extract! batch, :id, :batchname, :batchdescription, :created_at, :updated_at
json.url batch_url(batch, format: :json)