require 'spec_helper'

describe "oils/new" do
  before(:each) do
    assign(:oil, stub_model(Oil,
      :name => "MyString",
      :description => "MyText",
      :brand => "MyString",
      :groups => "MyString"
    ).as_new_record)
  end

  it "renders new oil form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => oils_path, :method => "post" do
      assert_select "input#oil_name", :name => "oil[name]"
      assert_select "textarea#oil_description", :name => "oil[description]"
      assert_select "input#oil_brand", :name => "oil[brand]"
      assert_select "input#oil_groups", :name => "oil[groups]"
    end
  end
end
