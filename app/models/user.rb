class User < ApplicationRecord
  validates :name, presence: true ,length:{maximum:15}
  VALID_EMAIL_REGEX = /\A[a-z\d]+@[a-z\d]+.[a-z\d]+\z/
  validates :email, presence: true , format:{wuth: VAlID_EMAIL_REGEX}
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)\z/
  validates :password, length:{minimum:8 , maximum:32}, format:{with: VALID_PASSWORD_REGEX}
  validates :password_confirmation, length: {minimum:8 , maximum:32}, format:{with: VALID_PASSWORD_REGEX}
  
  has_secure_password
end
