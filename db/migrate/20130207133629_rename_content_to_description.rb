class RenameContentToDescription < ActiveRecord::Migration
  def up
    rename_column :conferences, :content, :description
  end

  def down
    rename_column :conferences, :description, :content
  end
end
