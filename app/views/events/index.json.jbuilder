json.array!(@events) do |event|
  json.extract! event, :id, :ename, :edesc
  json.url event_url(event, format: :json)
end
