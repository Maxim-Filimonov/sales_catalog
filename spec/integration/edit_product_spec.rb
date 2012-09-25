# encoding = utf-8
require 'integration/spec_helper'
feature "Editing product" do
  background do
    visit admin_root_path
    within ".admin_user" do
      admin = create :admin_user
      fill_in 'admin_user_email', with: admin.email
      fill_in 'admin_user_password', with: admin.password
      check 'Remember me'
      click_button 'Login'
    end
  end
  scenario "Assign product to group" do
    group1 = create(:group, name: 'cat1')
    product = create(:product)
    visit edit_admin_product_path(product)
    within "#edit_product" do
      select(group1.name, from: 'product[group_ids][]')
      click_button "Update"
    end
    page.should have_selector("tr li:contains(#{group1.name})")
  end

  scenario "Assign product to brand" do
    brand = create(:group, name: 'brand1')
    product = create(:product)
    visit edit_admin_product_path(product)
    within "#edit_product" do
      select(brand.name, from: 'product[group_ids][]')
      click_button "Update"
    end
    page.should have_selector("tr li:contains(#{group1.name})")
  end
  end
end
