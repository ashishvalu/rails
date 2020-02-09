class Book < ApplicationRecord
  has_many :Pictures, as: :photoble
end
