class Lesson < ApplicationRecord

  belongs_to :lesson_name
  belongs_to :teacher
  belongs_to :student
end
