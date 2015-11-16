class RoutinesController < ApplicationController

	def index
		@routines = Routine.all 
	end 

	def create

	end 

	def edit
	end 

	def new
		@routine = Routine.new
	end 

	def show
	end 

	def update
	end

	def destroy
	end
	 
end
