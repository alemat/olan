class News < ApplicationRecord
  belongs_to :medium

  scope :published, -> { where(status: true)}
  
end
