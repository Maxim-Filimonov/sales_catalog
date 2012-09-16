# encoding = utf-8
ActiveAdmin.register Category do
  menu label: 'Категории'
  form do |f|
    f.inputs(t 'active_admin.resource.edit.details') do
      f.input :name
      f.input :description
    end
    f.buttons
  end
  show do |category|
    attributes_table do
      row :name
      row :description do |cat|
        markdown(cat.description)
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
  index do 
    column :name
    column :created_at
    column :updated_at
    default_actions
  end
end
