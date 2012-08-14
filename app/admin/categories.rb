ActiveAdmin.register Category do
  menu label: I18n.t('formtastic.labels.categories')
  form do |f|
    f.inputs(t '.details') do
      f.input :name
      f.input :description
    end
    f.buttons
  end
end
