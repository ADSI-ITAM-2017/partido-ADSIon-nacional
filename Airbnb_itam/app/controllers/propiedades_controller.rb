class PropiedadesController < ApplicationController
	def index
		@propiedades = Propiedad.all
	end
	def show
		@propiedad = Propiedad.find(params[:id])
	end
	def create
		@propiedad = Propiedad.new(propiedad_params)
		@propiedad.save
		redirect_back fallback_location: { action: "index"}
	end
	private
  	def propiedad_params
    	params.require(:propiedad).permit(:descripcion, :calle, :num_ext, :num_int, :colonia, :cp, :delegacion, :precio, :tipo_habitacion, :wifi, :cable, :agua, :gas, :gas_natural, :telefono, :tipo_contrato, :usuario_id)
  	end
end
