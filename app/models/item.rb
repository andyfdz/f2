class Item < ActiveRecord::Base
  belongs_to :category
  has_many :likes
  mount_uploader :photo,PhotoUploader
end
