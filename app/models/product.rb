class Product < ActiveRecord::Base
   attr_accessible :name, :subtitle, :medium_id, :series_id, :format_id, :length, :width, :height, :weight, :pages, :playtime, :pub_date, :description, :category_id, :upc, :visible, :active, :price, :can_wholesale, :wholesale_price, :cost, :inventory, :minimum_stock, :country_code

   belongs_to :medium
   belongs_to :series
   belongs_to :format   
   belongs_to :category

   validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
   validates :upc, uniqueness: { case_sensitive: false }, :allow_nil => true
   validates :medium_id, presence: true
   validates :format_id, presence: true
   validates :inventory, presence: true
   
   
#   has_many :authorships
#   has_many :authors through: :authorships

   before_save { |product| product.upc = upc.to_s.upcase }
   
   default_scope order: 'products.created_at DESC'

end

# == Schema Information
#
# Table name: products
#
#  id              :integer         not null, primary key
#  name            :string(255)
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
#  subtitle        :string(255)
#  medium_id       :integer
#  series_id       :integer
#  format_id       :integer
#  pages           :integer
#  playtime        :integer
#  pub_date        :date
#  can_wholesale   :boolean
#  minimum_stock   :integer
#  sold            :integer
#

