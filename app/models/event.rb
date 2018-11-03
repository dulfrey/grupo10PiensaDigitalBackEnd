class Event < ApplicationRecord
  belongs_to :eventtype
  has_many :responsableEvents
  has_many :users, :through => :responsableEvents 
  has_many :assistanceEvents
  has_many :users, :through => :assistanceEvents
end
