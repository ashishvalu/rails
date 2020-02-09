class StandardsTeacher < ApplicationRecord
  belongs_to :standard
  belongs_to :teacher
end
