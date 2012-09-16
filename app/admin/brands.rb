# encoding = utf-8
ActiveAdmin.register Brand do
  menu label: 'Бренды'
  form do |f|
    f.inputs(t 'active_admin.resource.edit.details') do
      f.input :name
    end
    f.buttons
  end
end
