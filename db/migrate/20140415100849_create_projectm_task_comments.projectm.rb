# This migration comes from projectm (originally 20140415100745)
class CreateProjectmTaskComments < ActiveRecord::Migration
  def change
    create_table :projectm_task_comments do |t|
      t.text :add_task_comment
      t.integer :task_id
      t.integer :user_id
      t.string :task_comment_created_by

      t.timestamps
    end
  end
end
