class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|

      
      t.string :specific
      t.integer :number

      t.timestamps null: false
    end
  end
end
