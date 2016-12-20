class DropTableResearchesProjects < ActiveRecord::Migration
  def change
    drop_table :researches_projects
  end
end
