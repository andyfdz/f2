class User < ActiveRecord::Base
	belongs_to :sector
	has_many :like
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]
 reverse_geocoded_by :latitude, :longitude
 after_validation :reverse_geocode
 mount_uploader :photo, UserPhotoUploader
  	def self.find_for_facebook_oauth(auth)
		user = User.where(provider: auth.provider, uid: auth.uid).first # The User was found in our database
		return user if user

		# Check if the User is already registered without Facebook
		user = User.where(email: auth.info.email).first 
		return user if user

		User.create(
		name: auth.extra.raw_info.name, 
	    provider: auth.provider, 
	    uid: auth.uid, 
	    image: auth.info.image,
	    email: auth.info.email,
			password: Devise.friendly_token[0,20])
	end
end

