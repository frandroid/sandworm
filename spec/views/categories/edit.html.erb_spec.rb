require 'spec_helper'

describe "categories/edit" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :name => "MyString",
      :description => "MyText",
      :note => "MyText",
      :visible => false
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path(@category), :method => "post" do
      assert_select "input#category_name", :name => "category[name]"
      assert_select "textarea#category_description", :name => "category[description]"
      assert_select "textarea#category_note", :name => "category[note]"
      assert_select "input#category_visible", :name => "category[visible]"
    end
  end
end
