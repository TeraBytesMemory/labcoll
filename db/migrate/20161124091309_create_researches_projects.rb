class CreateResearchesProjects < ActiveRecord::Migration
  def change
    create_table :researches_projects do |t|
      t.references :project, index: true, foreign_key: true
      t.references :research, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
