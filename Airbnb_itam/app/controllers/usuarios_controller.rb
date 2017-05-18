class UsuariosController < ApplicationController
	def new
		@usuario= Usuario.new
		render "usuario/new"
	end
end
