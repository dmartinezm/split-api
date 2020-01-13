class AuthController < ApplicationController
    skip_before_action :authenticate_request

    def create
        # user = User.find_by("lower(email) = ?", params[:email].downcase)
        # if user && user.authenticate(params[:password])
        #     #this is what will be passed in the token payload
        #   render json: { token: create_token(user.id), user_id: user.id }
        #   # render json: {ok: true}
    
        # else 
        #   render json: { errors: [ "That didn't match any users WE know about 💁" ] }, status: :unprocessable_entity
        # end 
        authenticate

    end

    private

    def authenticate
      
      command = AuthenticateUser.call(params[:email], params[:password])
      user = User.find_by("lower(email) = ?", params[:email].downcase)

      if command.success?
        render json:{
          token: command.result,
          user_id: user.id,
          message: 'Login Successful'
        }
      else 
        render json: { errors: command.errors }, status: :unauthorized
      end 
    end
end
