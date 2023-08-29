class Category < ApplicationRecord
  has_many :actions, dependent: :destroy
  has_many :user_categories, dependent: :destroy
  has_many :users, through: :user_categories

  validates :title, presence: true
end
