class CreateResearchBranches < ActiveRecord::Migration
  def change
    create_table :research_branches do |t|

      t.string :name

      t.timestamps null: false
    end
  end
end
