class BookingTicket < ApplicationRecord
  has_many :booking_seats
  belongs_to :customer
  belongs_to :room
end
