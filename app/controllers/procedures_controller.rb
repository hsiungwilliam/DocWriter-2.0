class ProceduresController < ApplicationController

	before_action :require_user, only: [:index, :show, :edit]
	
	def index
		@procedure = Procedure.all
	end

	def new
		@procedure = Procedure.new(subsubcategory_id: params[:id])
	end

	def edit 
	  @procedure = Procedure.find(params[:id]) 
	end

	def update 
	  @procedure = Procedure.find(params[:id]) 
	  if @procedure.update_attributes(procedure_params) 
	    redirect_to(subsubcategory_path(:id => @procedure.subsubcategory_id)) 
	  else 
	    render 'edit' 
	  end 
	end

	def create
		@thisid = params[:id]
		@procedure = Procedure.new(procedure_params)
		if @procedure.save
			redirect_to(subsubcategory_path(:id => @procedure.subsubcategory_id)) 
		else
			render 'new'
		end
	end


	def show
		@subsubcategory = Subsubcategory.find(params[:id])
		@procedures = @subsubcategory.procedures
	end

	def destroy
		@previd = Procedure.find(params[:id])
		Procedure.find(params[:id]).destroy
		flash[:success] = "Procedure deleted"
		redirect_to(subsubcategory_path(@previd.subsubcategory_id))
	end


	private
		def procedure_params
			params.require(:procedure).permit(:content, :subsubcategory_id)
		end

end
