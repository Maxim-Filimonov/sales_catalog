# encoding = utf-8
ActiveAdmin.register Oil do
  filter :name
  filter :created_at
  filter :updated_at
  filter :groups_id, :as => :check_boxes, :collection => proc { Group.all}
  filter :brand
  menu label: 'Масла'
  form :partial => 'form'
  index do
    column :name
    column :brand
    column :created_at
    column :updated_at
    default_actions
  end
  show do |product|
    attributes_table do
      row :name
      row :brand
      row :created_at
      row :updated_at
      row :description do |p|
        markdown(p.description)
      end
      row :oil_variations do |oil|
        ul do
          oil.oil_variations.each do |variation|
            li do
              "#{variation.volume} + #{number_to_currency(variation.price)}"
            end
          end
        end
      end
    end
    active_admin_comments
  end
end
