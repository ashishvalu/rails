class Book < ApplicationRecord
  belongs_to :Publisher
  belongs_to :categary
end
