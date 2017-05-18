class PropiedadesController < ApplicationController
	def index
		@propiedades = Propiedad.all
	end
	def show
		@propiedad = propiedad.find(params[:id])
	end
end
