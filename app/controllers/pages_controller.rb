class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @completed_chal_historic = UserChallenge.where(user_id: current_user.id, done: true)
  end
end
