class SociosController < ApplicationController
	def index
	end
	def new
	end
	def create
		@socio = Socio.new(params[:socios])
		@socio.save
		redirect_to @socio
	end
end
