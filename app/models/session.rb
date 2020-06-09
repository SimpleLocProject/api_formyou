class Session < ApplicationRecord
  belongs_to :course
  belongs_to :classroom
  has_many :usersessions

end
