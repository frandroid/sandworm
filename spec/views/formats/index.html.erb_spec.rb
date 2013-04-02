require 'spec_helper'

describe "formats/index" do
  before(:each) do
    assign(:formats, [
      stub_model(Format,
        :name => "Name",
        :width => 1,
        :length => 2,
        :height => 3,
        :weight => 4,
        :medium_id => 5
      ),
      stub_model(Format,
        :name => "Name",
        :width => 1,
        :length => 2,
        :height => 3,
        :weight => 4,
        :medium_id => 5
      )
    ])
  end

  it "renders a list of formats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
