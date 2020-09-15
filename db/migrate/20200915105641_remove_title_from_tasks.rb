class RemoveTitleFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :image, :text
  end
end
