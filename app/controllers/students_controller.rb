class StudentsController < ApplicationController
  require 'csv'
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all.paginate(:page => params[:page])
    if params[:search]
      @students = Student.search(params[:search]).order("created_at DESC")
    else
      @students = Student.all.order("created_at DESC")
    end
  end

  def import

  end

  def to_db
    student = Student.new();
    added_rows = 0
    rows = 0
    CSV.foreach(params[:file].path, :headers => true) do |row|
      data = row.to_hash
      student = Student.new(
                            :lname => (data['Last Name']),
                            :fname => (data['First Name']),
                            :uid => (data['UID']),
                            :transfer_hours => (data['TREH']).to_i,
      )
      student.save
      #course = Course.find_by(course_number: (data['Number']).to_i)
      course = Course.find_by_course_number_and_term((data['Number']).to_i, (data['Term']).to_i)
      #course = Course.new(:
      student = Student.find_by(uid: (data['UID']))
      if not student.courses.include?(course)
        student.courses << course
        relation = student.course_students.find_by(course: course) 
        if not data['Grade'].blank?
          relation.grade = data['Grade']
        end
        @courses = Course.where(course_number: (data['Number']).to_i)
        @courses.each do |c|
          if student.courses.include?(c)
            newrelation = student.course_students.find_by(course: c)
            if (relation.grade == "D" or relation.grade == "D+" or relation.grade == "F" or relation.grade == "U")
              newrelation.increment
              newrelation.save
            end
            relation.attempt = newrelation.attempt
          end
        end
        relation.save
      end
      
      student.save
    end
    redirect_to students_path
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def course
    @courses = CourseStudent.where(student_id: params[:id])
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:uid, :act_math, :degree, :email, :ethnicity, :fname, :gender, :graduation, :high_school, :lname, :prior_college, :transfer_hours)
    end
end
