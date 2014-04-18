class CreateProjectmProjects < ActiveRecord::Migration
  def change
    create_table :projectm_projects do |t|
      t.string :project_title
      t.string :project_created_by
      t.datetime :project_created_on
      t.text :project_details
      t.datetime :project_starts_on
      t.datetime :project_ends_on
      t.string :status
      t.string :invite_people
      t.integer :user_id

      t.timestamps
    end
  end
end
