ActiveAdmin.register User do
  index do
    column :id
    column :email
    column :first_name
    column :last_name
    column :committee
    column :sign_in_count

    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :phone_number
      f.input :graduation_year
      f.input :committee, :as => :select
      f.input :position

      f.input :face, :as => :file, :hint => f.template.image_tag(f.object.face.url(:original))
      f.input :resume, :as => :file
      f.input :is_alumni, :as => :boolean
      f.input :is_administrator, :as => :boolean
    end
    f.buttons
  end
end
