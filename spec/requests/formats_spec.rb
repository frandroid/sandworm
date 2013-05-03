require 'spec_helper'

describe "Formats" do

  before "as admin" do
     @admin = FactoryGirl.create(:admin)
     sign_in @admin
  end

  describe "GET /formats" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get formats_path
      response.status.should be(200)
    end
  end
end
