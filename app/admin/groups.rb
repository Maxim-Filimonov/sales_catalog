# encoding = utf-8
ActiveAdmin.register Group do
  menu label: 'Группы'
  form do |f|
    f.inputs(t 'active_admin.resource.edit.details') do
      f.input :name
      f.input :category
      f.input :description
    end
    f.buttons
  end
  show do |product|
    attributes_table do
      row :name
      row :category
      row :description do |p|
        markdown(p.description)
      end
    end
  end
end
