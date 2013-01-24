ActiveAdmin.register User do

  filter :email
  filter :created_at
  filter :updated_at

  index do
    column :id
    column :name
    column :email
    column :created_at
    column :updated_at
    default_actions
  end
end
