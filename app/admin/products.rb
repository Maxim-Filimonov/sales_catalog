# encoding = utf-8
ActiveAdmin.register Product do
  filter :name
  filter :price
  filter :created_at
  filter :updated_at
  filter :groups_id, :as => :check_boxes, :collection => proc { Group.all}
  filter :brand
  menu label: 'Продукты'
  form :partial => 'form'
  index do
    column :name
    column :price
    column :brand
    column :created_at
    column :updated_at
    default_actions
  end
  show do |product|
    attributes_table do
      row :name
      row :price do |p|
        number_to_currency(p.price)
      end
      row :brand
      row :created_at
      row :updated_at
      row :description do |p|
        markdown(p.description)
      end
      row :groups do |p|
        ul do
          p.groups.each do |cat|
            li cat.name 
          end
        end
      end
    end
    active_admin_comments
  end
end
