class DriversController < ApplicationController
 
 before_action :get_id, only: [:edit,:show,:update,:destroy]

 public

 def index
 	
 	@driver = Driver.all
 	
 end

 def new
 	@driver = Driver.new
 end

 def create
 	#render text: params[:driver].inspect
 	@driver = Driver.new(get_params)
 	if @driver.save
 		redirect_to drivers_path
 	else
 		redirect_to new_drivers_path
 	end

 	
 end

 def edit
 end

 def update
 	if @driver.update(get_params)
 		redirect_to drivers_path
 	else
 		redirect_to edit_drivers_path(@driver)
 	end
 end

 def destroy
 	@driver.destroy
 	redirect_to drivers_path

 end


 private

 def get_id
 	@driver = Driver.find(params[:id])
 	
 end
 def get_params
 	params.require(:driver).permit(:name,:age,:driver_number,:status,:exp)
 	
 end

end
