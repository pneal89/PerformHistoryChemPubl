json.extract! course_student, :id, :grade, :attempt, :student_id, :course_id, :created_at, :updated_at
json.url course_student_url(course_student, format: :json)