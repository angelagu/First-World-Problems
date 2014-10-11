class CreateFirstWorldProblems < ActiveRecord::Migration
  def change
    create_table :first_world_problems do |t|
      t.string :problem

      t.timestamps
    end
  end
end
