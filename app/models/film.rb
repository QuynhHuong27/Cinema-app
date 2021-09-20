class Film < ApplicationRecord
  enum status: [:comming_soon, :showing, :special]
end
