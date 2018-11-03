class Event < ApplicationRecord
  belongs_to :eventtype
  belongs_to :user
end
