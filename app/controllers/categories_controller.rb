class CategoriesController < ApplicationController

  def index
    @user = current_user
    @categories = Category.all
    @user_categories = UserCategory.new
    @category = Category.new
  end

  def show
  end
end
