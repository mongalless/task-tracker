class CreateSubcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :subcomments do |t|
      t.text :subcomment_text
      t.references :subtask, foreign_key: true

      t.timestamps
    end
  end
end
