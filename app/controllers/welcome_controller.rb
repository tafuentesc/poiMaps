class WelcomeController < ApplicationController
  def index
  	@buildings = Building.all
  	
  	respond_to do |format|
  		format.html
  		format.json {render :json => @buildings}
  	end
  end
end
