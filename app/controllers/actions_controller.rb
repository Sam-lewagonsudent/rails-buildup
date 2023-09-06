class ActionsController < ApplicationController
  def index
    @user = current_user
    @all_user_categories = @user.categories
    @selected_category_ids = params[:categories] || []

    if @selected_category_ids.empty?
      @actions = []
    else
      @selected_categories = Category.where(id: @selected_category_ids)
      @actions = Action.where(category: @selected_categories)
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @action = Action.find(params[:id])
  end

  def add_to_challenges
    @action = Action.find(params[:id])
    user_challenge = current_user.user_challenges.new(action: @action, done: false)

    if user_challenge.valid?
      user_challenge.save
      redirect_to user_challenges_path
    else
      redirect_to action_path(@action), alert: user_challenge.errors.full_messages.join(", ")
    end
  end


  private

  def action_params
    params.require(:action).permit(:name, :span, :value, :category_id)
  end
end
