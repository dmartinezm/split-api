class AuthenticateUser
    prepend SimpleCommand
    # The simple command gem is an easy way to create services. Its role is similar to the role of a helper,
    # but it instead facilitates the connection between the controller and the model, rather than the controller and the view. 
    # In this way, we can shorten the code in the models and controllers.

    attr_accessor :email, :password

    def initialize(email, password)
        @email = email
        @password = password
    end

    def call
        #this is where the results are returned
        if user
            JsonWebToken::encode(user_id: user.id)
        end
    end

    private 

    def user
        user = User.find_by(email: @email)
        if user && user.authenticate(@password)
            return user
        else
            errors.add :user_authentication, 'Invalid Credentials'
        end
        nil
       
    end
        
    

end
