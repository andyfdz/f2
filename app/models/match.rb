class Match < ActiveRecord::Base
	belongs_to :item_one, class: "Item", foreing_key: :object_one_id
	belongs_to :item_two, class: "Item", foreing_key: :object_two_id
end
