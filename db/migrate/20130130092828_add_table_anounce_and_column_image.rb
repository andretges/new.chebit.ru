class AddTableAnounceAndColumnImage < ActiveRecord::Migration
  def change
    add_column :conferences, :anounce, :boolean
    add_column :presentations, :image, :string
    drop_table :users
    drop_table :roles
    drop_table :users_roles
  end
end
