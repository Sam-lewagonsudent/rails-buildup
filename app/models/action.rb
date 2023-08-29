class Action < ApplicationRecord
  belongs_to :category
  has_many :user_challenges, dependent: :destroy

  validates :name, presence: true
  validates :span, presence: true
  validates :value, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :category_id, presence: true
end
