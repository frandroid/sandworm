require 'spec_helper'
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

describe "Product pages" do
   
   subject { page }
   
   describe "show page" do
      # category = FactoryGirl.create(:category)
      let(:category) { FactoryGirl.create(:category) }
      let(:product) { FactoryGirl.create(:product) }
      let(:admin) { FactoryGirl.create(:admin) }
        
      before do 
         sign_in admin
         visit product_path(product) 
      end
      
      it { should have_selector('h1', text: product.name ) } 
   end
end

      
