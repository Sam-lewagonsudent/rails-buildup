class Action < ApplicationRecord
  belongs_to :category
  has_many :user_challenges
end
