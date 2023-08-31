class AddIconToActions < ActiveRecord::Migration[7.0]
  def change
    add_column :actions, :icon, :string
  end
end
