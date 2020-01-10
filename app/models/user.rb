class User < ApplicationRecord
    #encrypt password
    has_secure_password

    has_many :groups
    has_many :expenses, through: :groups


    validates_presence_of :first_name, :last_name, :email, :password
    validates_uniqueness_of :email, case_sensitive: false
end
