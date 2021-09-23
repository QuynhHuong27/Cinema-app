class Seat < ApplicationRecord
  enum status: [:blank, :booked]
  belongs_to :room
end
