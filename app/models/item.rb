class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :likes
  mount_uploader :photo,PhotoUploader
end
