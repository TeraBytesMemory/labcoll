class Laboratory < ActiveRecord::Base
  has_many :projects

  has_many :researches_laboratories
  has_many :researches, :through => :researches_laboratories

  def imagePath
    suffix = self.image ? self.image : 'no_image'
    'labs/' + suffix + '.jpg'
  end
end
