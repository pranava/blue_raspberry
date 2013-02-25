ActiveAdmin.register Committee do
  index do
    column :id
    column :name
    column :director

    default_actions
  end
end
