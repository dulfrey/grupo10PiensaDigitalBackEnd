class User < ApplicationRecord
    # encrypt password
  has_secure_password

    has_many :events
  # Validations
  validates_presence_of :name, :password_digest

end
