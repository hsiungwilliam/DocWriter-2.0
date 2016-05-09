class ProceduresController < ApplicationController
	
	def index
		@procedure = Procedure.all
	end

	def new
		@procedure = Procedure.new
	end

	def create
		@procedure = Procedure.new(procedure_params)
		if @procedure.save
			redirect_to '/procedures'
		else
			render 'new'
		end
	end

	private
		def procedure_params
			params.require(:procedure).permit(:content)
		end

end
