# This migration comes from projectm (originally 20140415082002)
class CreateProjectmPictures < ActiveRecord::Migration
  def change
    create_table :projectm_pictures do |t|
      t.string :attachment
      t.integer :project_id
      t.string :resource_type
      t.integer :resource_id

      t.timestamps
    end
  end
end
