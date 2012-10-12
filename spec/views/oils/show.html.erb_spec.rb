require 'spec_helper'

describe "oils/show" do
  before(:each) do
    @oil = assign(:oil, stub_model(Oil,
      :name => "Name",
      :description => "MyText",
      :brand => "Brand",
      :groups => "Groups"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Brand/)
    rendered.should match(/Groups/)
  end
end
