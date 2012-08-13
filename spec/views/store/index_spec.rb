# encoding: UTF-8
require 'spec_helper'
describe 'store/index' do
  it 'renders categories' do
    category = create(:category)
    assign :categories, [category]
    render
    rendered.should include link_to(category.name, category)
  end
end
