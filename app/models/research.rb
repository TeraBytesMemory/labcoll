class Research < ActiveRecord::Base
  has_many :laboratories

  has_many :researches_projects
  has_many :projects, ->{order('id')}, :through => :researches_projects

  belongs_to :research_branch
end
