json.array! @workspaces do |workspace|

  json.name workspace.name
  json.status workspace.status
  json.created_at workspace.created_at
  json.updated_at workspace.updated_at


  json.location do
    json.longitude workspace.location.longitude
    json.latitude workspace.location.latitude
  end
end
