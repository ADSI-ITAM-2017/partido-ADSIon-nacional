class UsuariosController < ApplicationController
	def new
		@usuario= Usuario.new
		render "usuarios/new"
	end
end
