class TractorsController < ApplicationController

	before_action :get_params, only: [:edit,:update,:destroy,:show]


	def index
		#get all data from Tractor object
		@tractor = Tractor.all
		#@tractor = Tractor.includes(:driver).all
		
	end

	def show
		
	end

	def new
		@tractor = Tractor.new
		
	end

	def create
		@tractor = Tractor.new(find_params)

			respond_to do |f|
				if @tractor.save
				f.html{ redirect_to @tractor, notice: "Tractor created successfully!"}
				f.json{ render json: @tractor.errors, status: :unprocessable_entity}
			else
				f.html{ redirect_to new_tractor_path}
				f.json{ render json: @tractor.errors, status: :unprocessable_entity}
			end
		end
		
	end

	def edit
		
	end

	def update

		respond_to do |f|
				if @tractor.update(find_params)
				f.html{ redirect_to @tractor, notice: "Tractor updated successfully!"}
				f.json{ render json: @tractor.errors, status: :unprocessable_entity}
			else
				f.html{ redirect_to edit_tractor_path}
				f.json{ render json: @tractor.errors, status: :unprocessable_entity}
			end
		end


		
	end

	def destroy
		respond_to do |f|
				@tractor.destroy
			
			
				f.html{ redirect_to new_tractor_path}
				f.json{ head :no_content}
			
		end
		
	end





	private

	def find_params
		params.require(:tractor).permit(:unit_number,:unit_year,:mileage,:fuel_range,:last_pm,:fleet_unit,:truck_model)
		
	end

	def get_params
		@tractor = Tractor.find(params[:id])
	end









end
