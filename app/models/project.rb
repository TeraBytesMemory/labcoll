class Project < ActiveRecord::Base
  belongs_to :laboratories

  has_many :researches_projects
  has_many :researches, :through => :researches_projects

  def fund_sen_yen
    fund = self.fund / 1000
    fund.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,')
  end

  def laboratory
    Laboratory.find(self.laboratory_id)
  end
end
