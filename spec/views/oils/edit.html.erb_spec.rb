require 'spec_helper'

describe "oils/edit" do
  before(:each) do
    @oil = assign(:oil, stub_model(Oil,
      :name => "MyString",
      :description => "MyText",
      :brand => "MyString",
      :groups => "MyString"
    ))
  end

  it "renders the edit oil form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => oils_path(@oil), :method => "post" do
      assert_select "input#oil_name", :name => "oil[name]"
      assert_select "textarea#oil_description", :name => "oil[description]"
      assert_select "input#oil_brand", :name => "oil[brand]"
      assert_select "input#oil_groups", :name => "oil[groups]"
    end
  end
end
