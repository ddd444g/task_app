class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :start
      t.date :stop
      t.string :memo

      t.timestamps
    end
  end
end
