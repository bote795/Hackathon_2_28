class FinalGrade < ActiveRecord::Base
  attr_accessible :course, :coursename, :grade, :hours, :userID
end
