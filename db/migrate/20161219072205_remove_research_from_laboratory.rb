class RemoveResearchFromLaboratory < ActiveRecord::Migration
  def change
    remove_reference :laboratories, :research, index: true, foreign_key: true
  end
end
