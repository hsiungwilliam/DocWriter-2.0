class SubcategoriesController < ApplicationController
	
	def show
		@subcategory = Subcategory.find(params[:id])
		@subsubcategories = @subcategory.subsubcategories
	end

end
