class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      @total_value = current_user.total_value_of_completed_actions
      @ranked_users = User.ranked_by_total_value
      @ranked_categories = Category.ranked_by_total_value
      @categories = Category.all
    end
  end

  def profile
    @completed_chal_historic = UserChallenge.where(user_id: current_user.id, done: true)
  end

  def bootstrap
    @user_categories = UserCategory.where(user_id: current_user.id)
  end

  def  impact
  end

  def convertisseur
  end
end
