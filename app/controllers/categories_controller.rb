class CategoriesController < ApplicationController
	
	before_action :require_user, only: [:show, :edit, :update, :destroy]
  	before_action :require_editor, only: [:show, :edit]
  	before_action :require_admin, only: [:destroy]

 
	
	def index
		@categories = Category.all

		@note = Note.find_by(id: '1')


		
	


	end


	def write_to_file
		path = "../Notes/Note.txt"
		content = "data from the form"
		File.open(path, "w+") do |f|
		  f.write(content)
		end
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

	def writetofile
		@note = Note.find_by(id: '1')
		@file_data = @note.last_name + ', ' + @note.first_name + "\n\n\n" + @note.technique
		@file_name = @note.last_name + ', ' + @note.first_name
		p @file_data
		p @file_name
		# send_data(@file_data, options = {:filename => @file_name})
		File.write('/Note/file', @file_data)
		flash[:success] = @file_name + ' was saved'
	end

	helper_method :writetofile

	def ajax_sum
        @note = Note.find_by(id: '1')
		@file_data = @note.last_name + ', ' + @note.first_name + "\n\n" + @note.technique
		@file_name = @note.last_name + ', ' + @note.first_name
		# p @file_data
		# p @file_name
		# send_data(@file_data.note.path, options = {:filename => @file_name, :type => 'text', :x_sendfile => true})
		# p 'sent'
		File.write('./Notes/' + @file_name + ".txt", @file_data)
		flash[:success] = @file_name + ' was saved'

		send_file('/Notes/' + @file_name + '.txt', options = {:filename => @file_name, :type => 'txt', :x_sendfile => true})
    end


	private
		def category_params
			params.require(:category).permit(:title)
		end




end
