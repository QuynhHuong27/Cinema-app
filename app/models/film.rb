class Film < ApplicationRecord
  belongs_to :film_type
  belongs_to :room

  enum status: [:comming_soon, :showing, :special]
end
