class ExercisesController < ApplicationController

	def index
		@routine_exercises = Exercise.all 
	end 

	def create
		@routine = Routine.find(params[:routine_id])
		@routine_exercise = Exercise.new(exercise_params) 
		if @routine_exercise.save 
			redirect_to routine_exercise_path(id: @routine_exercise.id)
		else 
			render :new
		end 
	end 

	def edit
	end 

	def new
		@routine = Routine.find(params[:routine_id])
		@routine_exercise = Exercise.new(exercise_params)
	end 

	def show
		@routine_exercise = Exercise.find(params[:id])

	end 

	def update
	end

	def destroy
	end 

private

	def return_exercise
		@routine_exercise = Exercise.find(params[:id])
	end 

	def exercise_params
		params.require(:exercise).permit(:exercise_name, :description, :duration)
	end 

end 




# ========Routes==========

#        routine_exercises GET    /routines/:routine_id/exercises(.:format)          exercises#index
#                          POST   /routines/:routine_id/exercises(.:format)          exercises#create
#     new_routine_exercise GET    /routines/:routine_id/exercises/new(.:format)      exercises#new
#    edit_routine_exercise GET    /routines/:routine_id/exercises/:id/edit(.:format) exercises#edit
#         routine_exercise GET    /routines/:routine_id/exercises/:id(.:format)      exercises#show
#                          PATCH  /routines/:routine_id/exercises/:id(.:format)      exercises#update
#                          PUT    /routines/:routine_id/exercises/:id(.:format)      exercises#update
#                          DELETE /routines/:routine_id/exercises/:id(.:format)      exercises#destroy






