class PagesController < ApplicationController
  def home
  end
   def get_address
  if params['latitude'] && params['longitude']
  	 @address=Geocoder.address([params[:latitude],params[:longitude]])
  	 	render jason: @address
  end
