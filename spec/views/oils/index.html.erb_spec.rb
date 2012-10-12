require 'spec_helper'

describe "oils/index" do
  before(:each) do
    assign(:oils, [
      stub_model(Oil,
        :name => "Name",
        :description => "MyText",
        :brand => "Brand",
        :groups => "Groups"
      ),
      stub_model(Oil,
        :name => "Name",
        :description => "MyText",
        :brand => "Brand",
        :groups => "Groups"
      )
    ])
  end

  it "renders a list of oils" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Groups".to_s, :count => 2
  end
end
