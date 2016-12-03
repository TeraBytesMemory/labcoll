class RenameResearchSpecificToResearch < ActiveRecord::Migration
  def change
    rename_table :research_specifics, :researches
  end
end
