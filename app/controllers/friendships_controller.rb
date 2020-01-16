class FriendshipsController < ApplicationController
    def show
        
        friends = Friendship.find_by(user_id: params[:id])
        render json: friends
    end

    def create
        user = User.find(friend_create_params[:user_id])
        friend = User.find(friend_create_params[:friend_id])
        user.friends.push(friend)
        render json: user
    end
    
    private

    def friend_create_params
        params.permit(:user_id, :friend_id)
    end



end
