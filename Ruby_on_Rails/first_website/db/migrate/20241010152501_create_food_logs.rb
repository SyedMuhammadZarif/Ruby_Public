class CreateFoodLogs < ActiveRecord::Migration[7.2]
  def change
    create_table :food_logs do |t|
      t.string :name
      t.string :meal_type
      t.text :content

      t.timestamps
    end
  end
end
