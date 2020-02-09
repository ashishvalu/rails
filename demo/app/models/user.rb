class User < ApplicationRecord
  validates :name, :phone, :email, presence: true
  validates :name, length: { minimum: 5}
  validates :phone, length: {in: 10..15}
  validates :email, uniqueness: { message:"enter email create time only"},on: :create
  validates :email, presence:{message: "please type your email address"}
  validates :phone, numericality: { only_integer: true }

end
