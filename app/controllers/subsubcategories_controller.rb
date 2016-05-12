class SubsubcategoriesController < ApplicationController
	def show
		@subsubcategory = Subsubcategory.find(params[:id])
		@procedures = @subsubcategory.procedures
		@thisid = params[:id]
	end

	def new
		@subsubcategory = Subsubcategory.new(subcategory_id: params[:id])
	end

	def create
		#@category = Category.find(params[:id])
		@thisid = params[:id]
		@subsubcategory = Subsubcategory.new(subsubcategory_params)
		#@subcategory.category_id = params[:id]
		#@subcategory = Subcategory.create(category_id: params[:id])


		if @subsubcategory.save
			redirect_to '/categories/'
		else
			render 'new'
		end
	end

	private
		def subsubcategory_params
			params.require(:subsubcategory).permit(:title, :subcategory_id)
		end

end
