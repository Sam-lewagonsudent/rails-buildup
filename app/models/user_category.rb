class UserCategory < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :user_id, presence: true
  validates :category_id, presence: true, uniqueness: { scope: :user_id }
end
