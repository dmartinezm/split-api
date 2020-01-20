class UsersController < ApplicationController
    
    def show
        user= User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        if user.valid?
            payload = {
                user_id: user.id
            }
            token = JWT.encode(payload, HMAC_SECRET, 'HS256')
            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def addGroup
        user = User.find(group_params[:user_id])
        user.groups.create(name: group_params[:name])
        render json: {user: UserSerializer.new(user)}
    end


    private

    def user_params
        params.permit(:first_name, :last_name, :email, :password)
    end

    def group_params
        params.permit(:user_id,:name)
    end

end
