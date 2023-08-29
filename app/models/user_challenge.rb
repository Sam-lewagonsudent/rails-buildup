class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :action

  validates :user_id, presence: true
  validates :action_id, presence: true
  validates :done, inclusion: [true, false]
end
