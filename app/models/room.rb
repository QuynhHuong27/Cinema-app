class Room < ApplicationRecord
  belongs_to :cinema
  has_many :seat
  has_many :films
end
