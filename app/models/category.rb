class Category < ApplicationRecord
  has_many :actions, dependent: :destroy
  has_many :user_categories, dependent: :destroy
  has_many :users, through: :user_categories

  validates :title, presence: true
  COLORS = ["#7498CE", "#7CCE74", "#CE7474",  "#CEC874", "#9B74CE"]

  def self.ranked_by_total_value
    joins(actions: :user_challenges)
      .where(user_challenges: { done: true })
      .group('categories.id')
      .select('categories.*, SUM(actions.value) as total_value')
      .order('total_value DESC')
  end

  def ranked_users_by_total_value
    User.joins(user_challenges: { action: :category })
        .where(user_challenges: { done: true }, actions: { category_id: self.id })
        .group('users.id')
        .select('users.*, SUM(actions.value) as total_value')
        .order('total_value DESC')
        .limit(10)
  end
end
