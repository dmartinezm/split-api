class AuthController < ApplicationController

    def login
        user = User.find_by("lower(email) = ?", login_params[:email].downcase)
        if user && user.authenticate(login_params[:password])
            render json: {user: user, token: encode_token(user)}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def persist

        if token
            render json: logged_in_user
        end
    end

    private

    def login_params
        params.require(:auth).permit(:email, :password)
    end

end
