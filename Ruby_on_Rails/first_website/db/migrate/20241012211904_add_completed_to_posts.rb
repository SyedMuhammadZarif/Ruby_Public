class AddCompletedToPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :completed, :boolean
  end
end
