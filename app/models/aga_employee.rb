class AgaEmployee < ActiveRecord::Base  

  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  validates :job_title, presence: true, length: { maximum: 100 }
  validates :job_description, presence: true
  validates :phone_number, presence: true, format: { with: /(\d{3}\d{3}\d{4}|\d{3}-\d{3}-\d{4})/, message: "incorrect format" }
  validates :image, presence: true

  mount_uploader :image, ImageUploader

  extend FriendlyId 
  friendly_id :name, use: [:slugged, :finders]


end
