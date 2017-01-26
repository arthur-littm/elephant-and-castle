class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :videos
  has_many :portraits



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
