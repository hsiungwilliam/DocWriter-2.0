class SubCategory < ActiveRecord::Base
	belongs_to :category
	has_many :sub_sub_category
end
