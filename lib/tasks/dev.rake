namespace :dev do
  desc "Setup dev dta"
  task prime: "db:setup"  do
    workspace = Workspace.create!(name: '麟光家族', radius: 30)
    workspace.create_location!(latitude: 37.8668, longitude: -122.2536)

    team = Team.create!(name: 'Super Heros')

    u1 = User.create!(username: 'hello', email: 'hello@dev.null', password: 'asdfasdf', password_confirmation: 'asdfasdf')

    u2 = User.create!(username: 'hello2', email: 'hello2@dev.null', password: 'asdfasdf', password_confirmation: 'asdfasdf')

    u1.teams << team
    u2.teams << team

    u1.workspaces << workspace
    u2.workspaces << workspace

    u1.locations.create!(latitude: 37.8669, longitude: -122.2536)
    u2.locations.create!(latitude: 37.8667, longitude: -122.2535)
  end
end
