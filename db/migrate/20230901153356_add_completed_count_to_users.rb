class AddCompletedCountToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :completed_count, :integer
  end
end
