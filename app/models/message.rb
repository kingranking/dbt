class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user
  #belongs_to :for 
  #belongs_to :against
  validates :content, presence: true, unless: :image?

  mount_uploader :image, ImageUploader

end
