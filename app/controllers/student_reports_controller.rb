class StudentReportsController < ApplicationController
  def attempts
    # @student_twice = CourseStudent.all.group_by(&:student_id).order('course_id')
    @students = Student.all
    @report_data = []
    @students.each do |s|
      @courses = CourseStudent.where(student_id: s.id).group(:course_id).count
      @report_data.push([s,@courses])
    end
  end
end
