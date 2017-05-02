module StudentsHelper
  def course_name(id)
    return 'CHEM '  + Course.find(id).course_number.to_s
  end
end
