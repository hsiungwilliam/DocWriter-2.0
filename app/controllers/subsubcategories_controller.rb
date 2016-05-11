class SubsubcategoriesController < ApplicationController
	def show
		@subsubcategory = Subsubcategory.find(params[:id])
		@procedures = @subsubcategory.procedures
	end
end
