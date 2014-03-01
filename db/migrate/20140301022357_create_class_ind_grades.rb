class CreateClassIndGrades < ActiveRecord::Migration
  def change
    create_table :class_ind_grades do |t|
      t.integer :userID
      t.integer :course
      t.string :name
      t.integer :weight
      t.integer :grade

      t.timestamps
    end
  end
end
