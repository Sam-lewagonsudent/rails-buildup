class UserChallengesController < ApplicationController
  before_action :authenticate_user!
  after_save :increment_user_completed_count, if: :done_changed?

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
    redirect_to user_challenge_path(@user_challenge), notice: 'Status updated successfully.'
  end

  private

  def user_challenge_params
    params.require(:user_challenge).permit(:done, :completed_date)
  end

  def increment_user_completed_count
    user.increase_completed_count if done?
  end
end
