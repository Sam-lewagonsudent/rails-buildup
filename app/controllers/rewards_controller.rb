class RewardsController < ApplicationController
  def new
    @user = current_user
    @completed_actions = @user.completed_actions
    @actions = Action.all
  end

  def create
    @user = current_user
    selected_action = Action.find(params[:reward][:selected_action_id])
    @user.selected_icon = selected_action.icon
    @user.save!
    redirect_to root_path, notice: 'Icon selected'
  end
end
