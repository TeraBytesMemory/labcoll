class Project < ActiveRecord::Base
  belongs_to :laboratories

  def fund_sen_yen
    fund = self.fund / 1000
    fund.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,')
  end

end
