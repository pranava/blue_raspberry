ActiveAdmin.register Committee do
  index do
    column :id
    column :name
    column :director

    default_actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :email
      f.input :director, :as => :select, :collection => 
        Hash[User.find(:all, :conditions => {:is_alumni => false}).map{ |u| ["#{u.first_name} #{u.last_name}", u.id] }]
    end
    f.buttons
  end
end
