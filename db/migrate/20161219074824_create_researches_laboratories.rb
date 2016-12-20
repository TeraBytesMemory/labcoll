class CreateResearchesLaboratories < ActiveRecord::Migration
  def change
    create_table :researches_laboratories do |t|
      t.references :research, index: true, foreign_key: true
      t.references :laboratory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
