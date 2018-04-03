class CreateSubtasks < ActiveRecord::Migration[5.1]
  def change
    create_table :subtasks do |t|
      t.string :subtask_text
      t.datetime :subtask_release_date
      t.string :subtask_status
      t.string :subtask_priority
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
