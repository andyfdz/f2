class Item < ActiveRecord::Base
  belongs_to :category
  mount_uploader :photo,PhotoUploader
end
