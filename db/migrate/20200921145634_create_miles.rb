class CreateMiles < ActiveRecord::Migration[6.0]
  def change
    create_table :miles do |t|
      t.integer :get_mile  ,null: false
      t.integer :user_id ,null:false
      t.integer :task_id ,null:false
      t.timestamps
    end
  end
end
