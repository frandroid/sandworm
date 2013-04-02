class Series < ActiveRecord::Base
  attr_accessible :name, :url, :zinewiki
end

# == Schema Information
#
# Table name: series
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  url        :string(255)
#  zinewiki   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

