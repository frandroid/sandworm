class Category < ActiveRecord::Base
  attr_accessible :description, :name, :note, :visible
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  
  has_many :products
  
  
end
