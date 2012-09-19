class Product < ActiveRecord::Base
   attr_accessible :active, :category_id, :cost, :description, :details_id, :height, :inventory, :length, :name, :product_type_id, :price, :upc, :visible, :weight, :wholesale_price, :width
   validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
   validates :upc, uniqueness: { case_sensitive: false }, :allow_nil => true
   belongs_to :category

  
   before_save { |product| product.upc = upc.to_s.upcase }
   

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

