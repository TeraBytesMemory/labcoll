class Laboratory < ActiveRecord::Base
  has_many :projects

  belongs_to :researches

  def imagePath
    suffix = self.image ? self.image : 'no_image'
    'labos/' + suffix + '.jpg'
  end
end
