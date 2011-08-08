require 'spec_helper'

describe "item_types/edit.html.erb" do
  before(:each) do
    @item_type = assign(:item_type, stub_model(ItemType,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit item_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => item_types_path(@item_type), :method => "post" do
      assert_select "input#item_type_name", :name => "item_type[name]"
      assert_select "textarea#item_type_description", :name => "item_type[description]"
    end
  end
end
