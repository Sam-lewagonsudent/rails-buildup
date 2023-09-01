class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many  :user_categories, dependent: :destroy
  has_many  :categories, through: :user_categories
  has_many  :user_challenges, dependent: :destroy
  validates :user_name, presence: true, uniqueness: true
  validates :region, presence: true

  def total_value_of_completed_actions
    user_challenges.joins(:action)
                      .where(done: true)
                      .sum('actions.value')
  end

  def self.ranked_by_total_value
    joins(user_challenges: :action)
      .where(user_challenges: { done: true })
      .group('users.id')
      .select('users.*, SUM(actions.value) as total_value')
      .order('total_value DESC')
      .limit(10)
  end

  def current_level
    level = total_value_of_completed_actions / 100
    level + 1
  end

  def total_value_of_completed_actions
    user_challenges.joins(:action).where(done: true).sum('actions.value')
  end
end
