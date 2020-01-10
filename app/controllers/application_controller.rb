class ApplicationController < ActionController::API
    def secret
        ENV['TOKEN_SECRET']
    end
end
