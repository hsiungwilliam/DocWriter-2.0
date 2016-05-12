class ProceduresController < ApplicationController
	
	def index
		@procedure = Procedure.all
	end

	def new
		@procedure = Procedure.new(subsubcategory_id: params[:id])
	end

	def create
		@thisid = params[:id]
		@procedure = Procedure.new(procedure_params)
		if @procedure.save
			redirect_to '/categories'
		else
			render 'new'
		end
	end


	def show
		@subsubcategory = Subsubcategory.find(params[:id])
		@procedures = @subsubcategory.procedures


	end

	private
		def procedure_params
			params.require(:procedure).permit(:content, :subsubcategory_id)
		end

end
