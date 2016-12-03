class AddResearchBranchToResearch < ActiveRecord::Migration
  def change
    add_reference :researches, :research_branch, index: true, foreign_key: true
  end
end
