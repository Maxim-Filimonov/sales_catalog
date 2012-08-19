# encoding = utf-8
ActiveAdmin.register Product do
  filter :name
  filter :price
  filter :created_at
  filter :updated_at
  filter :groups_id, :as => :check_boxes, :collection => proc { Group.all}
  menu label: 'Продукты'
  form do |f|
    f.inputs(t '.details') do
      f.input :name
      f.input :price
    end
    f.inputs :groups
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
      row :groups do |product|
        ul do
          product.groups.each do |cat|
            li cat.name 
          end
        end
      end
    end
    active_admin_comments
  end
end
