ActiveAdmin.register Admin do
  permit_params :firstname, :lastname, :username, :email, 
                :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :firstname
    column :lastname
    column :username
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :firstname
      f.input :lastname
      f.input :username
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
