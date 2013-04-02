require 'spec_helper'

describe "formats/show" do
  before(:each) do
    @format = assign(:format, stub_model(Format,
      :name => "Name",
      :width => 1,
      :length => 2,
      :height => 3,
      :weight => 4,
      :medium_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
