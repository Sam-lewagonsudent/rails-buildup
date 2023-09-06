class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      @user_challenges = current_user.user_challenges.includes(:action)
      @total_value = current_user.total_value_of_completed_actions
      @ranked_users = User.ranked_by_total_value
      @ranked_categories = Category.ranked_by_total_value
      @categories = Category.all
      @user = current_user
      @user_level = current_level(@total_value)
      @user_challenges_not_completed = UserChallenge.where(user_id: current_user.id, done: false)
      @user_progress = @total_value % 100
    end
  end

  def profile
    @user_challenges = current_user.user_challenges.includes(:action)
    @completed_chal_historic = UserChallenge.where(user_id: current_user.id, done: true)
    @user_categories = UserCategory.where(user_id: current_user.id)
  end

  def profil
    @user_challenges = current_user.user_challenges.includes(:action)
    @completed_chal_historic = UserChallenge.where(user_id: current_user.id, done: true)
    @user_categories = UserCategory.where(user_id: current_user.id)
  end

  def bootstrap
    @user_categories = UserCategory.where(user_id: current_user.id)
  end

  def impact
  end

  def convertisseur

  end

  def calculate_total_value(user)
    completed_actions = user.user_challenges.where(done: true)
    total_value = completed_actions.sum(:value)
    total_value
  end

  def current_level(total_value)
    level = total_value / 100
    level + 1
  end

  def progress
    total_value % 100
  end
end
