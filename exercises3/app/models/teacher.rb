class Teacher < ApplicationRecord
  has_and_belongs_to_many :standards
  has_many :standards, through: :standard
end
