# encoding: UTF-8
require 'spec_helper'
describe 'store/index' do
  it 'renders product price' do
    assign(:products, build_list(:product,1, price: 100))
    render
    rendered.should include("100.00 руб") 
  end
end
