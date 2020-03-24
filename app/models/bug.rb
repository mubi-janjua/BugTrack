class Bug < ApplicationRecord
  validates :title, presence: true
  validates :typed, presence: true
  validates :status, presence: true
  belongs_to :projectt
  has_one_attached :image
  belongs_to :creator, class_name: "User"
  has_many :comments
end
