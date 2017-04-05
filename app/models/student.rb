class Student < ApplicationRecord
  validates_uniqueness_of :uid

	has_many :course_students
	has_many :courses, through: :course_students
end
