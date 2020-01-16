class ApplicationController < ActionController::API
    # before_action :authenticate_request
    # attr_reader :current_user

    # private
    # def authenticate_request
    #     @current_user = AuthorizeApiRequest.call(request.headers).result
    #     render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    # end

    HMAC_SECRET = ENV['TOKEN_SECRET']

    def encode_token(user)
        payload = {user_id: user.id}
        token = JWT.encode(payload, HMAC_SECRET, 'HS256')
    end

    def token
        if request.headers['Authorization']
            token = request.headers['Authorization'].split(' ')[1]
        end
    end

    def decode_token
        if token
            decode_token = JWT.decode(token,HMAC_SECRET, true, {algorithm: 'HS256'})
            user_id = decode_token[0]['user_id']
        end
    end

    def logged_in_user
        if decode_token
            User.find(decode_token)
        end
    end

end
