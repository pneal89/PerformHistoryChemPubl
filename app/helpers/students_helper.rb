module StudentsHelper
  def course_name(id)
    return 'CHEM '  + Course.find(id.to_i).course_number.to_s
  end
end
