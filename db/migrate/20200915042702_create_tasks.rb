class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :image
      t.string :name
      t.text :description
      t.integer :price
      t.timestamps
    end
  end
end
