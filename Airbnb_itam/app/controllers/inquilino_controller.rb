class InquilinoController < ApplicationController
	def index
		@propiedad = Propiedad.new
		render "inquilino/index"
	end
	def show
	end
end
