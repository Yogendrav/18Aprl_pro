class CreateProjectmTasks < ActiveRecord::Migration
  def change
    create_table :projectm_tasks do |t|
      t.string :title
      t.string :task_created_by
      t.string :all_project
      t.datetime :task_created_on
      t.text :task_details
      t.datetime :starts_on
      t.datetime :ends_on
      t.integer :project_id
      t.integer :user_id
      t.string :task_status

      t.timestamps
    end
  end
end
