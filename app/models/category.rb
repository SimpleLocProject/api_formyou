class Category < ApplicationRecord
    has_many :course_categories
    validates :name, presence: true 
end
