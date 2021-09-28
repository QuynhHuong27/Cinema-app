class Seat < ApplicationRecord
  enum status: [:blank, :booked]
  belongs_to :room
  has_one :booking_seat
end
