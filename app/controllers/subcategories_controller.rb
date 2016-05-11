class SubcategoriesController < ApplicationController
	
	def show
		@subcategory = Subcategory.find(params[:id])
		@subsubcategories = @subcategory.subsubcategories.all
		@thisid = params[:id]
	end

	def new
		@subcategory = Subcategory.new
	end

	def create
		#@category = Category.find(params[:id])
		@subcategory = Subcategory.new(subcategory_params)
		@subcategory.category_id = params[:id]
		#@subcategory = Subcategory.create(title: "", category_id: params[:id])


		if @subcategory.save
			redirect_to '/categories/'
		else
			render 'new'
		end
	end

	private
		def subcategory_params
			params.require(:subcategory).permit(:title)
		end

end
