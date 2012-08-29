require 'spec_helper'

describe "Product pages" do
   
   subject { page }
   
   describe "show page" do
      let(:product) { FactoryGirl.create(:product) }
      before { visit product_path(product) }
      
      it { should have_selector('h1', text: product.name ) }
   end
end

      
