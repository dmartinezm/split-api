class JsonWebToken 
    HMAC_SECRET = Rails.application.secrets.secret_key_base 

    def self.encode(payload, exp = 1.hours.from_now)
        payload[:exp] = exp.to_i
        JWT.encode(payload, HMAC_SECRET, 'HS256')
    end

    def self.decode(token)
        # take the first index of decoded array
        body = JWT.decode(token, HMAC_SECRET, true, {algorithm: 'HS256'})[0]    

        # HashWithIndifferentAccess allows us to access hash key as a symbol or string
        HashWithIndifferentAccess.new body

        # rescue from all decode errors
        rescue
            nil
        # rescue JWT::DecodeError, JWT::VerificationError => e
        #   raise ExceptionHandler::InvalidToken, e.message
        
    end
end