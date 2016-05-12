class SubcategoriesController < ApplicationController

	before_action :require_user, only: [:index, :show, :edit]
	
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

	def edit 
	  @subcategory = Subcategory.find(params[:id]) 
	end

	def update 
	  @subcategory = Subcategory.find(params[:id]) 
	  if @subcategory.update_attributes(subcategory_params) 
	   redirect_to(category_path(:id => @subcategory.category_id)) 
 
	  else 
	    render 'edit' 
	  end 
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
			redirect_to(category_path(:id => @subcategory.category_id))
		else
			render 'new'
		end
	end

	def destroy
		@previd = Subcategory.find(params[:id])
		Subcategory.find(params[:id]).destroy
		flash[:success] = "Subcategory deleted"
		redirect_to(category_path(@previd.category_id))
	end

	private
		def subcategory_params
			params.require(:subcategory).permit(:title, :category_id)
		end

end
