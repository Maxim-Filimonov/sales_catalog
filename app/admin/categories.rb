# encoding = utf-8
ActiveAdmin.register Category do
  menu label: 'Категории'
  form do |f|
    f.inputs(t '.details') do
      f.input :name
      f.input :description
    end
    f.buttons
  end
end
