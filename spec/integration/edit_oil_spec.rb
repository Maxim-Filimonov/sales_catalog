# encoding = utf-8
require 'integration/spec_helper'
feature "Editing oil" do
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
  scenario "Assign oil to category" do
    category = create(:category, name: 'cat1')
    oil = create(:oil)
    visit edit_admin_oil_path(oil)
    within ".oil" do
      select(category.name, from: 'oil[category_ids][]')
      click_button "Update"
    end
    page.should have_selector("li:contains(#{category.name})")
  end
end
