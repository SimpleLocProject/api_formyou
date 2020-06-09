class Course < ApplicationRecord
  has_many :teacher, class_name: "User"
  # belongs_to :course_category, optional: true
  validates :title, presence: true
  validates :description, presence: true

  has_many :course_categories
  has_many :categories, :through => :course_categories, dependent: :destroy
end
