class CourseCategory < ApplicationRecord
  has_many :courses
  belongs_to :category
end
