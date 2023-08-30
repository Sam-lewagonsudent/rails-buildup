class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      @total_value = current_user.total_value_of_completed_actions
    end
  end


  def profile
    @completed_chal_historic = UserChallenge.where(user_id: current_user.id, done: true)
  end

end
