class User < ApplicationRecord
  
  VALID_EMAIL_REGEX = /\A[a-z\d]+@[a-z\d]+.[a-z\d]+\z/
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/ 
 
  validates :name, presence: true ,length:{maximum:15}
  validates :email, presence: true , format:{with: VALID_EMAIL_REGEX}
  validates :password, length:{minimum:8 , maximum:32}, format:{with: VALID_PASSWORD_REGEX}
  validates :password_confirmation, length: {minimum:8 , maximum:32}, format:{with: VALID_PASSWORD_REGEX}
  
  has_secure_password
  
  has_many :topics
  has_many :favorites, dependent: :destroy
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
