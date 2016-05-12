class CategoriesController < ApplicationController
	
	before_action :require_user, only: [:show, :edit, :update, :destroy]
  	before_action :require_editor, only: [:show, :edit]
  	before_action :require_admin, only: [:destroy]
	
	def index
		@categories = Category.all
	end

	def edit
		@category = Category.find(params[:id])
	end

	def new
		@category = Category.new
	end

	def show
		@category = Category.find(params[:id])
		@subcategories = @category.subcategories
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to '/categories'
		else
			render 'new'
		end
	end

	def update 
	  @category = Category.find(params[:id]) 
	  if @category.update_attributes(category_params) 
	    redirect_to(main_path()) 
	  else 
	    render 'edit' 
	  end 
	end

	def destroy
		Category.find(params[:id]).destroy
		flash[:success] = "Category deleted"
		redirect_to(main_path())
	end

	private
		def category_params
			params.require(:category).permit(:title)
		end

end
