class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
    	t.string :routine_name 
    	t.references :user

      t.timestamps null: false
    end
  end
end
