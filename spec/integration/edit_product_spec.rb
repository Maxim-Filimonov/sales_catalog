# encoding = utf-8
require 'spec_helper'
feature "Editing product" do
  scenario "Adding product to category" do
    category1 = create(:category, name: 'cat1')
    category2 = create(:category, name: 'cat2')
    product = create(:product)
    visit edit_product_path(product)
    within "form" do
      select(category1.name, from: 'product[category_ids][]')
      click_button "Сохранить"
    end
    visit category_path(category1)
  end
end
