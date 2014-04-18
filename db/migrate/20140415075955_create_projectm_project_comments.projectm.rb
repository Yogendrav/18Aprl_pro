# This migration comes from projectm (originally 20140415075933)
class CreateProjectmProjectComments < ActiveRecord::Migration
  def change
    create_table :projectm_project_comments do |t|
      t.text :add_comment
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
