class BookingSeat < ApplicationRecord
  belongs_to :booking_ticket
  belongs_to :seat
end
