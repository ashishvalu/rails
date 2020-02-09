class Order < ApplicationRecord
  belongs_to :user

  validates :address, :state ,:city ,presence: true
  validates :postal_code, length: { is: 6}
  validates :phone,length: {in: 10..15}
  validates :phone, numericality: { only_integer: true }


end
