class Picture < ApplicationRecord
  belongs_to :photoble, polymorphic: true
end
