class User < ApplicationRecord
  scope :active, -> { where(active: true) }
  has_many :calendars
  has_many :cars, through: :calendars
end
