ActiveAdmin.register AgaEmployee do


index do
  column :name
  column :job_title
  column :job_description
  column :phone_number
  column :image, as: :file
  actions

end

  filter :name
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Aga Employees" do
      f.input :name
      f.input :job_title
      f.input :job_description
      f.input :phone_number
      f.input :image, as: :file
    end
    f.actions
  end



  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :job_title, :job_description, :phone_number, :image, :remove_image

  # form :html => {:multipart => true} do |f|
  #   f.inputs "Index" do
  #   f.input :name
  #   f.input :job_title
  #   f.input :job_description
  #   f.input :phone_number
  #   f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url)
  #   f.input :image_cache, :as => :hidden 
  #     if f.object.image?
  #       f.input :remove_image, :as => :boolean
  #   default_actions
  #     end
  #   end
  # end
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
