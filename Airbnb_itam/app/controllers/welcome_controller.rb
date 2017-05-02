class WelcomeController < ApplicationController
  def index
  	@propiedad = Propiedad.new
  end
  def create
  	render plain: params[:propiedad].inspect
  end	
end
