require 'bcrypt'

class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end

# require 'bcrypt'
# class User < ActiveRecord::Base
#   validates :username, :password_digest, :session_token, presence: true
#   validates :session_token, uniqueness: true
#   attr_reader :password

#   def self.find_by_credentials(username, password)
#     user = User.find_by_username(username)
#     user.try(:valid_password?, password) ? user : nil
#   end

#   def valid_password?(password)
#     BCrypt::Password.new(self.password_digest).is_password?(password)
#   end

#   def password=(password)
#     @password = password
#     self.password_digest = BCrypt::Password.create(password)
#   end

#   def reset_session_token
#     self.session_token = SecureRandom.urlsafe_base64
#     self.save!
#     self.session_token
#   end
# end
