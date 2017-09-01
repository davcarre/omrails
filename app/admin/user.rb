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

#to customize the fields the admin can change
	permit_params :email, :admin, :username, :name, :firstname, :ownid

	form do |f|
		f.semantic_errors
		f.inputs do
			f.input :email
			f.input :admin
			f.input :username
			f.input :name
			f.input :firstname
			f.input :ownid
		end
		f.actions
	end

#to customize admin view
	index do
		id_column
		column :email
		column :admin
		column :username
		column :name
		column :firstname
		column :ownid
		actions
	end
end
