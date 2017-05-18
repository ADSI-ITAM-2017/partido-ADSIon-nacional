class UsuariosController < ApplicationController
	def new
		@usuario= Usuario.new
		render "usuarios/new"
	end
	def create
		@usuario = Usuario.new(usuario_params)
		@usuario.save
		redirect_to @usuario
	end
	def show
		@usuario = Usuario.find(params[:id])
	end

private
  	def usuario_params
    	params.require(:usuario).permit(:nombre, :apellido, :email, :fecha_nac, :ubicacion, :telefono, :is_casero)
  	end
end
