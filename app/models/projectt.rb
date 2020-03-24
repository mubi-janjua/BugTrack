class Projectt < ApplicationRecord
	has_many :projectusers, dependent: :destroy
	has_many :users,  through: :projectusers
  has_many :bugs, dependent: :destroy
  has_many :comments, dependent: :destroy
end
