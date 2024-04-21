class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, presence: true, uniqueness: true, length: { maximum: 255 }
    validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    validates :password_digest, presence: true

    has_secure_password
end
