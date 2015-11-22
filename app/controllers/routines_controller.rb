class RoutinesController < ApplicationController
	before_action :return_routine, only: [:show, :edit, :update, :destroy]

	def index
		@routines = Routine.all 
	end 

	def new
		@routine = Routine.new
	end 


	def edit
	end 

	def create
		@routine = Routine.new(routine_params)
		
		if @routine.save
			redirect_to @routine
			else 
			render :new
		end 
	end 

	def show
		@routine = Routine.find(params[:id])
	end 

	def update
	end

	def destroy
		@routine = Routine.find(params[:id])
		@routine.destroy
		flash[:alert] = "Routine Deleted" 
		redirect_to routines_path
	end
	 

# =======privee=======

	def return_routine
		@routine = Routine.find(params[:id])
	end 

	def routine_params
		params.require(:routine).permit(:routine_name)
	end 



end
