class Film < ApplicationRecord
  belongs_to :film_type

  enum status: [:comming_soon, :showing, :special]
end
