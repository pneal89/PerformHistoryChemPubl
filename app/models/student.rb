class Student < ApplicationRecord
  validates_uniqueness_of :uid

	has_many :course_students
	has_many :courses, through: :course_students

	def self.search(search)
		where("uid LIKE ? OR degree LIKE ? OR email LIKE ? OR fname LIKE ? OR lname LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
	end
end
