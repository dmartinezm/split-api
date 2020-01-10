class User < ApplicationRecord
    #encrypt password
    has_secure_password

    # has_many :groups
    # has_many :expenses, through: :groups
    has_many :groupshares
    has_many :groups, through: :groupshares

    # friends - self referentail association
    has_many :friendships
    has_many :friends, through: :friendships
    has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id"
    has_many :inverse_friends, through: :inverse_friendships, source: :user


    validates_presence_of :first_name, :last_name, :email, :password
    validates_uniqueness_of :email, case_sensitive: false
end
