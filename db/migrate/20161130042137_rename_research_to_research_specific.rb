class RenameResearchToResearchSpecific < ActiveRecord::Migration
  def change
    rename_table :researches, :research_specifics
  end
end
