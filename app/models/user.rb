class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  has_many :usersessions

  # after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end


end
