class SociosController < ApplicationController
	def index
		@socio = Socio.all
	end

	def new
	end

	def show
		@socio = Socio.find(params[:id])
	end
	def create
		@socio = Socio.new(socio_params)
		@socio.save
		redirect_to @socio
	end

	private
	def socio_params
		params.require(:socios).permit(:nome, :email, :morada)
	end
end
