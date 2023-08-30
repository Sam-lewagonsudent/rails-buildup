class UserCategoriesController < ApplicationController

  def index
    @user_categories = UserCategory.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @user = current_user
    @categories = Category.all
    @user_category = UserCategory.new

  end

  def create
    user = current_user
    category_ids = params[:user_category][:category_ids]

    category_ids.each do |category_id|
      user.user_categories.create(category_id: category_id)
    end

    redirect_to root_path, notice: 'Categories were successfully associated.'
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def user_category_params
    params.require(:user_category).permit(:user_id, :category_id, category_ids: [])
  end

end
