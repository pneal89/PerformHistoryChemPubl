require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { course_number: @course.course_number, course_type: @course.course_type, credit_hours: @course.credit_hours, day: @course.day, instructor: @course.instructor, instructor_rank: @course.instructor_rank, rubric: @course.rubric, section: @course.section, term: @course.term, time: @course.time } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { course_number: @course.course_number, course_type: @course.course_type, credit_hours: @course.credit_hours, day: @course.day, instructor: @course.instructor, instructor_rank: @course.instructor_rank, rubric: @course.rubric, section: @course.section, term: @course.term, time: @course.time } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
