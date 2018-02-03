class CreateLaboratoryFollows < ActiveRecord::Migration
  def change
    create_table :laboratory_follows do |t|
      t.integer :user_id
      t.integer :target_laboratory_id

      t.timestamps null: false
    end
  end
end
