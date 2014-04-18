class CreateProjectmPhotos < ActiveRecord::Migration
  def change
    create_table :projectm_photos do |t|
      t.string :document
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end
  end
end
