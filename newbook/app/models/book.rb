class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :categary
  has_and_belongs_to_many :authors
end
