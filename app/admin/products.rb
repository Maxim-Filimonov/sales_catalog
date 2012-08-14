# encoding = utf-8
ActiveAdmin.register Product do
  filter :name
  filter :price
  filter :created_at
  filter :updated_at
  filter :categories_id, :as => :check_boxes, :collection => proc { Category.all}
  menu label: 'Продукты'
  form do |f|
    f.inputs(t '.details') do
      f.input :name
      f.input :price
    end
    f.inputs :categories
    f.buttons
  end
  show do |product|
    attributes_table do
      row :name
      row :price do |product|
        number_to_currency(product.price)
      end
      row :created_at
      row :updated_at
      row :categories do |product|
        ul do
          product.categories.each do |cat|
            li cat.name 
          end
        end
      end
    end
    active_admin_comments
  end
end
