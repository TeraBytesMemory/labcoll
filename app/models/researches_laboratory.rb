class ResearchesLaboratory < ActiveRecord::Base
  belongs_to :laboratory
  belongs_to :research
end
