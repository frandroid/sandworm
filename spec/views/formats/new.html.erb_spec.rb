require 'spec_helper'

describe "formats/new" do
  before(:each) do
    assign(:format, stub_model(Format,
      :name => "MyString",
      :width => 1,
      :length => 1,
      :height => 1,
      :weight => 1,
      :medium_id => 1
    ).as_new_record)
  end

  it "renders new format form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => formats_path, :method => "post" do
      assert_select "input#format_name", :name => "format[name]"
      assert_select "input#format_width", :name => "format[width]"
      assert_select "input#format_length", :name => "format[length]"
      assert_select "input#format_height", :name => "format[height]"
      assert_select "input#format_weight", :name => "format[weight]"
      assert_select "input#format_medium_id", :name => "format[medium_id]"
    end
  end
end
