class Place < ApplicationRecord
  mount_uploader :image, ImageUploader  
  has_many :comments
  belongs_to :area
  belongs_to :genre
  belongs_to :user, optional: true
  validates :area_id, presence:true
end
