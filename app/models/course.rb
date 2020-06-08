class Course < ApplicationRecord
  has_many :teacher, class_name: "User", foreign_key: "teacher_id"
  belongs_to :course_category
end
