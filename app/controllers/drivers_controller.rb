class DriversController < ApplicationController
 
 before_action :get_id, only: [:edit,:show,:update,:destroy]

 public

 def index
 	
 	@driver = Driver.all
 	
 end

 def show

 end

 def new
 	@driver = Driver.new
 end

 def create
 	#render text: params[:driver].inspect
 		@driver = Driver.new(get_params)
 	respond_to do |format|
       	if @driver.save
       		format.html{ 	redirect_to @driver, notice: "New Driver created!"}
       		format.json{ render json: @driver.errors, status: :unprocessable_entity}
 	
 	else
 		format.html{ 	redirect_to new_drivers_path }
       	format.json{ render json: @driver.errors, status: :unprocessable_entity}
 		
 	   end


 	end
 
 

 	
 end

 def edit
 end

 def update
 	respond_to do |format|

 	if @driver.update(get_params)

 		format.html {redirect_to @driver, notice: "updated driver completed!"}
 		format.json{render :json,@driver.errors,status: :unprocessable_entity}
 	else
 		format.html {redirect_to edit_drivers_path(@driver)}
 		format.json{render :json,@driver.errors,status: :unprocessable_entity}
 	
 	 end

  end
 end

 def destroy

 	@driver.destroy
 	respond_to do |format|

 	format.html{redirect_to drivers_path}
 	format.json{head :no_content}
   end

 end


 private

 def get_id
 	@driver = Driver.find(params[:id])
 	
 end
 def get_params
 	params.require(:driver).permit(:name,:age,:driver_number,:status,:exp)
 	
 end

end
