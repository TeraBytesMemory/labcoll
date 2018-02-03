class RemoveLaboratoryFromUser < ActiveRecord::Migration
  def change
    remove_reference :users, :laboratory, index: true, foreign_key: true
  end
end
