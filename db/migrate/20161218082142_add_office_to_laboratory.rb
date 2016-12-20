class AddOfficeToLaboratory < ActiveRecord::Migration
  def change
    add_column :laboratories, :office, :string
  end
end
