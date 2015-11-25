json.array!(@projects) do |project|
  json.extract! project, :id, :pname, :pcontent, :pid, :pdate
  json.url project_url(project, format: :json)
end
