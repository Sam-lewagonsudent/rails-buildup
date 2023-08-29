class ActionsController < ApplicationController


  def index
    @user = current_user
    @selected_categories = @user.categories
    @actions = Action.where(category: @selected_categories)
  end

  def show
    @action = Action.find(params[:id])
  end
end
