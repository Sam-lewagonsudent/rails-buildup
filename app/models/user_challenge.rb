class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :action

  validates :user_id, presence: true
  validates :action_id, presence: true
  validates :done, inclusion: [true, false]

  validate :action_once_per_day, on: :create

  private

  def action_once_per_day
    # if UserChallenge.where(user_id: user_id, action_id: action_id).where("DATE(created_at) = ?", Date.today).exists?
    #   errors.add(:base, "You've already added this challenge today.")
    # elsif UserChallenge.where(user_id: user_id, action_id: action_id, done: false).exists?
    #   errors.add(:base, "You've already added this challenge.")
    # end
  end
end
