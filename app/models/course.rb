class Course < ApplicationRecord
  has_many :teacher, class_name: "User"
  belongs_to :course_category, optional: true
  validates :title, presence: true
  validates :description, presence: true  
end
