class StudentReportsController < ApplicationController
  def attempts
    # @student_twice = CourseStudent.all.group_by(&:student_id).order('course_id')
    @students = Student.all
    @student_second =
  end
end
