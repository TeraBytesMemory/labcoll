class ResearchesProject < ActiveRecord::Base
  belongs_to :project
  belongs_to :research
end
