class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
end
