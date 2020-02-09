class User < ApplicationRecord
  has_many :orders


  validates :name, :phone, :email, presence: true
  validates :phone, numericality: { only_integer: true }

end
