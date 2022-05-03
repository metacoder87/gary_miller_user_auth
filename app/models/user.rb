class User < ApplicationRecord
    validates :username, :session_token, uniqueness: true, presence: true
    validates :password_digest, presence: { message: "Password can't be blank" }
    validates :password, length: { minimum: 6, allow_nil: true }
    before_validation :ensure_session_token

    attr_reader :password
