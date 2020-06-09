class CourseCategory < ApplicationRecord
  belongs_to :courses
  belongs_to :category
end
