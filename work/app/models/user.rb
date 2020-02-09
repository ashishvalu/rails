class User < ApplicationRecord
  has_many :Pictures, as: :photoble
end
