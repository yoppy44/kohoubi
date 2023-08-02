class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t| 
      t.string  :content,      null: false
      t.integer :score_id
      t.timestamps
    end
  end
end
