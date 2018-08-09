class Photo < ApplicationRecord
  has_many :fans, :through => :likes, :source => :user
  has_many :likes, :dependent => :destroy
  has_many :comments
  belongs_to :user
  #validations
  validates :user_id, presence: true
end
