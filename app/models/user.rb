class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: { maximum: 6 }
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :messages
  has_many :fors
  has_many :againsts
  mount_uploader :image, ImageUploader
end
