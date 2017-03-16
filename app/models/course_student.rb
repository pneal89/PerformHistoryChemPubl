class CourseStudent < ApplicationRecord
  belongs_to :student
  belongs_to :course


  before_save :default_attempt_count

  def increment
  	self.attempt += 1 if self.grade = "D"
  	self.attempt += 1 if self.grade = "D+"
  	self.attempt += 1 if self.grade = "F"
  	self.attempt += 1 if self.grade = "U"
  end

  def default_attempt_count
  	self.attempt ||= 0
  end

end
