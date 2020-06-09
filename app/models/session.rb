class Session < ApplicationRecord
  belongs_to :course
  belongs_to :classroom
  has_many :usersessions
  validates :begin_date, presence: true 

end
