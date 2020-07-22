class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages
  has_many :fors
  has_many :againsts
  validates :name, presence: true, uniqueness: true
end
