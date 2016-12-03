class AddLaboratoryToProject < ActiveRecord::Migration
  def change
    add_reference :projects, :laboratory, index: true, foreign_key: true
  end
end
