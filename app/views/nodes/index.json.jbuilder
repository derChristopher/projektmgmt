json.array!(@nodes) do |node|
  json.extract! node, :id, :name, :description, :level, :duration, :startdate, :enddate, :milestone, :project_id, :parent_id
  json.url node_url(node, format: :json)
end
