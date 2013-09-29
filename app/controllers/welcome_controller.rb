class WelcomeController < ApplicationController
  def index
  	@buildings = Building.all
  	
  	respond_to do |format|
  		format.html # index.html.erb
  		format.json # index.json.erb
  	end
  end
end
