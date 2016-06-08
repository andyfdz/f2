class Match < ActiveRecord::Base
	belongs_to :item_one, class_name: "Item", foreign_key: :object_one_id
	belongs_to :item_two, class_name: "Item", foreign_key: :object_two_id
end
