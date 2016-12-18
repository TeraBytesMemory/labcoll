class Research < ActiveRecord::Base
  has_many :laboratories

  has_many :researches_projects
  has_many :projects, ->{order('id')}, :through => :researches_projects

  belongs_to :research_branch

  def research_brothers
    research_branch = ResearchBranch.find(self.research_branch)
    research_branch.researches
  end
end
