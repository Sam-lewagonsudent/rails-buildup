class AddCategoryColorToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :category_color, :string
  end
end
