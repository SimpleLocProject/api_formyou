class Course < ApplicationRecord
  has_many :teacher, class_name: "User"
  belongs_to :course_category, optional: true
end
