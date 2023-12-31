class UserChallengesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_challenges = current_user.user_challenges.includes(:action)
  end

  def show
    @user_challenge = current_user.user_challenges.find(params[:id])
  end

  def update
  end

  def create
  end

  def toggle_complete
    @user_challenge = UserChallenge.find(params[:id])
    @user_challenge.update(done: !@user_challenge.done, completed_date: Date.today.strftime('%d/%m/%Y'))
    redirect_to user_challenge_path(@user_challenge)
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:done, :completed_date)
  end
end
