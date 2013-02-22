ActiveAdmin.register User do
  index do
    column :id
    column :email
    column :first_name
    column :last_name
    column :sign_in_count

    default_actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :face, :as => :file
      f.input :is_administrator, :as => :boolean
    end
    f.buttons
  end
end
