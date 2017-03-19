class TestController < ApplicationController
  def index
    @students = Student.all
    @student = Student.new
    @instructors = Instructor.all
    @courses = Course.all
    @users = User.all
  end
end
