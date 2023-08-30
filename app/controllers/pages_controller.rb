class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @total_value = current_user.total_value_of_completed_actions
  end
end
