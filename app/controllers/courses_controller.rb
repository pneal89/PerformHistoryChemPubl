class CoursesController < ApplicationController
  require 'csv'
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all.paginate(:page => params[:page])
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import

  end

  def to_db
    course = Course.new()
    added_rows = 0
    rows=0
    CSV.foreach(params[:file].path, :headers => true) do |row|
      data = row.to_hash
      instr = Instructor.find_by(name: data['Instructor'])
      if instr.blank?
        instr_id = (Instructor.create(:name => data['Instructor'])).id
      else
        instr_id = instr.id
      end
      #byebug
      course = Course.new(
                         :term => (data['Term']).to_i,
                         :rubric => data['Prefix'],
                         :course_number => (data['Number']).to_i,
                         :section => data['Sect'],
                         :credit_hours => (data['Credit']).to_i,
                         :day => data['Days'],
                         :time => data['Start'],
                         :instructor => data['Instructor'],
                         :course_type => data['Type'],
                         :instructor_id => instr_id.to_i
      )
      if course.save
        added_rows = added_rows + 1
      end
      rows = rows + 1
    end
    if added_rows == rows
      redirect_to courses_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:term, :rubric, :course_number, :section, :credit_hours, :course_type, :day, :time, :instructor, :instructor_rank)
    end
end
