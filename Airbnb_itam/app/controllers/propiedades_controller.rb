class PropiedadesController < ApplicationController
	def index
			@propiedad = Propiedad.new
		render "propiedades/index"
	end
	def show
	end
end
