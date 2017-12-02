class SociosController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

	def index
		@socio = Socio.all
	end

	def new
	end
	def edit
		@socio = Socio.find(params[:id])
	end
	def show
		@socio = Socio.find(params[:id])
	end
	def create
		@socio = Socio.new(socio_params)
		@socio.save
		redirect_to @socio
	end

	def update
		@socio = Socio.find(params[:id])

		if @socio.update(socio_params)
			redirect_to @socio
		else
			render 'edit'
		end
	end
 def destroy
    @socio = Socio.find(params[:id])
    @socio.destroy
 
    redirect_to @socio
  end

	private
	def socio_params
		params.require(:socios).permit(:nome, :email, :morada)
	end
end
