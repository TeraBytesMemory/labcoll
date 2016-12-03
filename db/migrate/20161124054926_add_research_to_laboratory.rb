class AddResearchToLaboratory < ActiveRecord::Migration
  def change
    add_reference :laboratories, :research, index: true, foreign_key: true
  end
end
