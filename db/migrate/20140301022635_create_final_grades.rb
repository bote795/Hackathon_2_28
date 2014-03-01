class CreateFinalGrades < ActiveRecord::Migration
  def change
    create_table :final_grades do |t|
      t.integer :userID
      t.integer :course
      t.string :coursename
      t.integer :grade
      t.integer :hours

      t.timestamps
    end
  end
end
