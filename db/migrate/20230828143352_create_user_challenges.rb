class CreateUserChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :user_challenges do |t|
      t.boolean :done
      t.date :completed_date
      t.references :user, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true

      t.timestamps
    end
  end
end
