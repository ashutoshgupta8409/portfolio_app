class AddDetailedFieldsToProjects < ActiveRecord::Migration[8.1]
  def change
    add_column :projects, :role_duration, :string
    add_column :projects, :project_timeline, :string
    add_column :projects, :project_badges, :string
    add_column :projects, :challenge_text, :text
    add_column :projects, :contributions, :json
    add_column :projects, :core_features, :json
    add_column :projects, :github_link, :string
  end
end
