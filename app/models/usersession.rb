class Usersession < ApplicationRecord
  belongs_to :student, class_name: "User", foreign_key: "student_id"
  belongs_to :session
  validates :note, presence: true 
  before_create :one_at_once

  def one_at_once
    @studentUsersessions = Usersession.where(student_id: (User.find(self.student_id)))
    
    @studentUsersessions.each do |userSession| 
      if (userSession.session.begin_date == self.session.begin_date)
        throw :abort
      end
    end
  end

end
