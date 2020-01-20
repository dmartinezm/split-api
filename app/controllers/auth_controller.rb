class AuthController < ApplicationController

    def login
        user = User.find_by("lower(email) = ?", login_params[:email].downcase)
        
        if user && user.authenticate(login_params[:password])
            # render json: {user: user.as_json(include: [:groups,:friends]), token: encode_token(user)}
            render json: {user: UserSerializer.new(user) , token: encode_token(user)}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def persist
        if request.headers['Authorization']
            ecoded_token = request.headers['Authorization'].split(' ')[1]
            decode_token = JWT.decode(ecoded_token,HMAC_SECRET, true, {algorithm: 'HS256'})
            user_id = decode_token[0]['user_id']
            user = User.find(user_id)
            render json: {user: UserSerializer.new(user)} #, include: [:groups,:friends]
        end
        
        # if token
        #     render json: logged_in_user
        # end
    end

    private

    def login_params
        params.require(:auth).permit(:email, :password)
    end

end
