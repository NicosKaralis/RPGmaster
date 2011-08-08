require 'spec_helper'

describe "items/index.html.erb" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :name => "Name",
        :description => "MyText",
        :type_id => 1,
        :effect => "MyText"
      ),
      stub_model(Item,
        :name => "Name",
        :description => "MyText",
        :type_id => 1,
        :effect => "MyText"
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
