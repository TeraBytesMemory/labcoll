class AddImageToLaboratory < ActiveRecord::Migration
  def change
    add_column :laboratories, :image, :string
  end
end
