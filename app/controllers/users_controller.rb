class UsersController < ApplicationController

    def show

        # user_id = params[:id]
        user= User.find(params[:id])
        render json: user

    end
end
