class AddColumnPhoto < ActiveRecord::Migration
  def up
    add_column :conferences, :photo_content, :text
  end

  def down
    remove_column :conferences, :photo_content
  end
end
