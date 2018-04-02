class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :task_text
      t.datetime :task_release_date
      t.string :task_status
      t.string :task_priority

      t.timestamps
    end
  end
end
