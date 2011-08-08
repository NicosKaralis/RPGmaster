require 'spec_helper'

describe "items/new.html.erb" do
  before(:each) do
    assign(:item, stub_model(Item,
      :name => "MyString",
      :description => "MyString",
      :effect => "MyString",
      :usage => 1
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path, :method => "post" do
      assert_select "input#item_name", :name => "item[name]"
      assert_select "input#item_description", :name => "item[description]"
      assert_select "input#item_effect", :name => "item[effect]"
      assert_select "input#item_usage", :name => "item[usage]"
    end
  end
end
