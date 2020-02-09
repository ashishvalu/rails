class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  belongs_to :publisher
  belongs_to :categary

  validates :name, presence: true
  validates :isbn10,:isbn13, numericality: { only_integer: true }
  validates :language ,length:{ maximum: 15}
  end
