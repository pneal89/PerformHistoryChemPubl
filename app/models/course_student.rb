class CourseStudent < ApplicationRecord
  belongs_to :student
  belongs_to :course


  before_save :default_attempt_count

  def increment
    #if (self.grade == "D" or self.grade == "D+" or self.grade == "F" or self.grade == "U")
  	#  self.attempt += 1 
    self.attempt += 1
    #end
  end

  def default_attempt_count
  	self.attempt ||= 0
  end

end
