require 'spec_helper'

describe "items/edit.html.erb" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "MyString",
      :description => "MyText",
      :type_id => 1,
      :effect => "MyText"
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_name", :name => "item[name]"
      assert_select "textarea#item_description", :name => "item[description]"
      assert_select "input#item_type_id", :name => "item[type_id]"
      assert_select "textarea#item_effect", :name => "item[effect]"
    end
  end
end
