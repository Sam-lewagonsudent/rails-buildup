class ActionsController < ApplicationController

  def index
    @user = current_user
    @selected_categories = @user.categories
    @actions = Action.where(category: @selected_categories)
  end

  def show
    @action = Action.find(params[:id])
  end

  def add_to_challenges
    @action = Action.find(params[:id])
    current_user.user_challenges.create(action: @action, done: false)
    redirect_to user_challenges_path, notice: 'Action was added to your challenges.'
  end

  private

  def action_params
    params.require(:action).permit(:name, :span, :value, :category_id)
  end
end
