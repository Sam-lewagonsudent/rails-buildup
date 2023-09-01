class AchievementsController < ApplicationController
  def index
    @user = current_user
    @actions = Action.all
  end
end
