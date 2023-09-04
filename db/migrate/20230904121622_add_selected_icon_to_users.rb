class AddSelectedIconToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :selected_icon, :string
  end
end
