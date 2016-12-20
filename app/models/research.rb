class Research < ActiveRecord::Base
  has_many :researches_laboratories
  has_many :laboratories, :through => :researches_laboratories

  belongs_to :research_branch

  def research_brothers
    research_branch = ResearchBranch.find(self.research_branch)
    research_branch.researches
  end

end
