class RenameAutorToAuthorInPresentations < ActiveRecord::Migration
  def change
    rename_column :presentations, :autor, :author
  end
end
