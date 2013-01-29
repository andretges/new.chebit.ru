class AddColumnConferenceAvatar < ActiveRecord::Migration
  def change
    add_column :conferences, :avatar, :string
  end
end
