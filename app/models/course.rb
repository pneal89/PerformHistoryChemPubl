class Course < ApplicationRecord
	validates :term, presence: true, numericality: { only_integer: true ,
    message: "only allows numbers" }, length: { is: 6 }

	validates :rubric, presence: true, inclusion: { in: %w(CHEM),
    message: "%{value} must be a Chemistry course" }

    validates :course_number, presence: true, numericality: { only_integer: true ,
    message: "only allows numbers" }, length: { is: 4 }

    #validates_uniqueness_of :section, scope: :term, message: "must be a unique term + section" }

    validates :credit_hours, presence: true, numericality: {less_than: 5}

    validates :course_type, presence: true, inclusion: { in: %w(lecture laboratory online independent\ study),
    message: "%{value} not a valid type" }

    validates :day, presence: true

    validates :time, presence: true

    validates :instructor, presence: true

    has_many :course_students
    has_many :students, through: :course_students
end