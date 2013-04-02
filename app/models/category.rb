class Category < ActiveRecord::Base
  attr_accessible :description, :name, :note, :visible
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  
  has_many :products
  
  
end

# == Schema Information
#
# Table name: categories
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  note        :text
#  visible     :boolean
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

