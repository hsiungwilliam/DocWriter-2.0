class SubsubcategoriesController < ApplicationController

	before_action :require_user, only: [:index, :show, :edit]
	
	def show
		@subsubcategory = Subsubcategory.find(params[:id])
		@procedures = @subsubcategory.procedures
		@thisid = params[:id]
	end

	def new
		@subsubcategory = Subsubcategory.new(subcategory_id: params[:id])
	end

	def edit 
	  @subsubcategory = Subsubcategory.find(params[:id]) 
	end

	def update 
	  @subsubcategory = Subsubcategory.find(params[:id]) 
	  if @subsubcategory.update_attributes(subsubcategory_params) 
	    redirect_to(subcategory_path(:id => @subsubcategory.subcategory_id)) 
	  else 
	    render 'edit' 
	  end 
	end

	def create
		#@category = Category.find(params[:id])
		@thisid = params[:id]
		@subsubcategory = Subsubcategory.new(subsubcategory_params)
		#@subcategory.category_id = params[:id]
		#@subcategory = Subcategory.create(category_id: params[:id])


		if @subsubcategory.save
			redirect_to(subcategory_path(:id => @subsubcategory.subcategory_id))
		else
			render 'new'
		end
	end

	def destroy
		@previd = Subsubcategory.find(params[:id])
		Subsubcategory.find(params[:id]).destroy
		flash[:success] = "Subsubcategory deleted"
		redirect_to(subcategory_path(@previd.subcategory_id))
	end

	private
		def subsubcategory_params
			params.require(:subsubcategory).permit(:title, :subcategory_id)
		end

end
