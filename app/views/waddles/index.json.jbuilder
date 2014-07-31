json.array!(@waddles) do |waddle|
  json.extract! waddle, :id, :name, :birthday, :height, :dance_type
  json.url waddle_url(waddle, format: :json)
end
