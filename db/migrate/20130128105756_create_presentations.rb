class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.integer :conference_id
      t.string :title
      t.text :context
      t.string :autor
      t.text :video_embed
      t.string :file_name
      t.string :file

      t.timestamps
    end
  end
end
