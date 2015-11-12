class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
    	t.string :exercise_name
    	t.string :description
    	t.string :duration 
    	t.references :routine

      t.timestamps null: false
    end
  end
end
