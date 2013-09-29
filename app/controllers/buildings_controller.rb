class BuildingsController < ApplicationController
  def index
   	@buildings = Building.all
  	@building = Building.new
  	
  	respond_to do |format|
  		format.html # index.html.erb
  		format.json # index.json.erb
  	end
 end

  def create
  	@building =  Building.new(params[:building])
  	
  	respond_to do |format|
  		if @building.save
  			format.json { render :json => @building, :status => :created }
  		else
  			format.json { render :json => @building, :status => :unprocessable_entity }
  		end 		
  	end
  end
end
