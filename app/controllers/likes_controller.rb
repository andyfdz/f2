class LikesController < ApplicationController

	def create
		Like.create like_params 
		current_item=Item.find_by(id: like_params[:item_id])
		other_user=current_item.user
		Item.where(user: current_user).each do |i| 
		if Like.exists?(item: i, user: other_user)
		@match=Match.create(item_one: current_item,item_two:i)
		Matchmailer.new_match(@match.item_one.user).deliver
        Matchmailer.new_match(@match.item_two.user).deliver
        redirect_to(random_path, notice: "Te ha gustado el objeto. Hiciste match") and return
		end
	end
		redirect_to random_path, notice: "Te ha gustado el objeto"
	end

private

	def like_params
      params.require(:like).permit(:item_id, :user_id)
    end
end
