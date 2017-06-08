ActiveAdmin.register Post do
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
  permit_params :title, :category_id, :author_id, :body
  index do
    selectable_column
    id_column
    column :title
    column :body do |post|
      truncate(post.body, omision: "...", length: 100)
    end
    column :author
    column :category
    column :created_at
    column :updated_at
    actions
  end

end
