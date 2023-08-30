class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @total_value = current_user.total_value_of_completed_actions
    @ranked_users = User.ranked_by_total_value
    @ranked_categories = Category.ranked_by_total_value
    @categories = Category.all

  end

  def user_ranking_per_category
    @categories = Category.all
  end
end
