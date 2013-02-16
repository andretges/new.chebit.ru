class RenameContextToContent < ActiveRecord::Migration
  def up
    rename_column :presentations, :context, :content
  end
end
