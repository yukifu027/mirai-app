class Place < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :name, :image, :content, :webpage, presence: true
  mount_uploader :image, ImageUploader
end
