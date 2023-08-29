class UserCategoriesController < ApplicationController
  def index
    @user_categories = UserCategory.where(user_id: current_user.id)
  end

  def show
  end

  def new
  end

  def create
  @user_category = UserCategory.new(user_category_params)
  @user_category.user = current_user
  @user_category.category = Category.find(params[:category_id])
  @user_category.save
  redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def user_category_params
    params.require(:user_category).permit(:user_id, :category_id)
  end

end
