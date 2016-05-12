class SubcategoriesController < ApplicationController
	
	def show
		@subcategory = Subcategory.find(params[:id])
		@subsubcategories = @subcategory.subsubcategories.all
		@thisid = params[:id]

		@previousid = params[@subcategory.category]
		# if @subcategory[0].category_id == nil
		# 	@subcategory[0].category_id = 1
		# end
		# @previousid = @subcategory[1].category_id
	end

	def new
		@subcategory = Subcategory.new(category_id: params[:id])
	end

	def create
		#@category = Category.find(params[:id])
		@thisid = params[:id]
		@subcategory = Subcategory.new(subcategory_params)
		#@subcategory.category_id = params[:id]
		#@subcategory = Subcategory.create(category_id: params[:id])


		if @subcategory.save
			redirect_to '/categories/'
		else
			render 'new'
		end
	end

	private
		def subcategory_params
			params.require(:subcategory).permit(:title, :category_id)
		end

end
