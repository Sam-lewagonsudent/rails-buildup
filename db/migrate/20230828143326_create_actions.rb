class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions do |t|
      t.string :name
      t.interval :span
      t.integer :value
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
