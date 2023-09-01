class RewardsController < ApplicationController
  def new
    @user = current_user
    @completed_actions = current_user.completed_actions.where('completed_count >= ?', 5)
  end

  def create
  end

  def update_icons
    @user = current_user
    selected_action_ids = params[:selected_action_ids]
    selected_action = Action.find(selected_action_ids.first) # Assuming only one icon is selected
    @user.update(selected_icon: selected_action, completed_count: @user.completed_count + 1) # Update icon and increment count
    redirect_to root_path, notice: 'Icon selected successfully!'
  end
end
