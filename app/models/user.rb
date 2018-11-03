class User < ApplicationRecord
    # encrypt password
  has_secure_password

    has_many :events
  # Validations
  validates_presence_of :name, :password_digest
    has_many :responsableEvents
    has_many :events ,through => :responsableEvents
    has_many :assistanceEvents
    has_many :events ,through => :assistanceEvents
end
