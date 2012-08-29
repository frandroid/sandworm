require 'spec_helper'

describe Product do

   before do
       @product = Product.new(name: "Doris #29", upc: "213123123")
   end
      
   subject { @product }
   
   it { should respond_to(:name) }
   
   it { should be_valid }
   
   describe "when name is not present" do
      before { @product.name = " " }
      it { should_not be_valid }
   end                 
   
   describe "when name is too long" do
      before { @product.name = "a" * 51}
      it { should_not be_valid }
   end
   
   describe "when product already exists" do
      before do
         product_with_same_name = @product.dup
         product_with_same_name.save
      end 
      
      it { should_not be_valid }
   end
   
   describe "when UPC already exists" do 
      before do
         product_with_same_upc = @product.dup
         product_with_same_upc.upc = @product.upc.to_s.upcase
         product_with_same_upc.save
      end 

      it { should_not be_valid }
   end
   
end



# == Schema Information
#
# Table name: products
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  product_type_id :integer
#  details_id      :integer
#  inventory       :integer
#  length          :integer
#  width           :integer
#  height          :integer
#  weight          :integer
#  category_id     :integer
#  description     :text
#  upc             :integer
#  visible         :boolean
#  active          :boolean
#  price           :decimal(8, 2)
#  wholesale_price :decimal(8, 2)
#  cost            :decimal(8, 2)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

