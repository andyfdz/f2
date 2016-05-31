class LikesController < ApplicationController

	def create
		Like.create like_params 
		redirect_to random_path, notice: "Te a gustado el objeto"
	end

private

	def like_params
      params.require(:like).permit(:item_id, :user_id)
    end
end
