class AgaEmployee < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  validates :content, presence: true, length: { maximum: 500 }
end
