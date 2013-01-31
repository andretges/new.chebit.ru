class AddTableAnounceAndColumnImage < ActiveRecord::Migration
  def change
    add_column :conferences, :anounce, :boolean, :null => false, :default => false
    add_column :presentations, :image, :string
    change_column :conferences, :title, :string, :null => false
    change_column :conferences, :date_conference, :datetime, :null => false
    change_column :conferences, :content, :text, :null => false

    change_column :presentations, :conference_id, :integer, :null => false
    change_column :presentations, :autor, :string, :null => false
    change_column :presentations, :title, :string, :null => false
    change_column :presentations, :context, :text, :null => false

    drop_table :users
    drop_table :roles
    drop_table :users_roles
  end
end
