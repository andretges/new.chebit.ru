class AddColumnConferenceAvatar < ActiveRecord::Migration
  def change
    add_column :conferences, :image, :string
  end
end
