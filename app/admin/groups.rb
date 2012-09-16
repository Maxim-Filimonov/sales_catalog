# encoding = utf-8
ActiveAdmin.register Group do
  menu label: 'Группы'
  form do |f|
    f.inputs(t 'active_admin.resource.edit.details') do
      f.input :name
      f.input :category
    end
    f.buttons
  end
end
