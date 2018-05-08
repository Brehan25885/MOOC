ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :email, :password
index do
    selectable_column
    id_column
    column :email
    column :encrypted_password
    column :current_sign_in_at
    column :gender
    column :profile_pic
    column :sign_in_count
    column :created_at
    actions
  end
  filter :email
  show do |user|
    attributes_table do
    row :email
    row :created_at
    row :updated_at
    end
  end
  form decorate: true do |f|
    f.inputs do
     f.input :name 
     f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :gender
      f.file_field :profile_pic

    end
    f.actions
  end
end
