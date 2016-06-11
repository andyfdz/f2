class Sector < ActiveRecord::Base
	has_many :users

	def to_s
		self.name
		
	end
end
