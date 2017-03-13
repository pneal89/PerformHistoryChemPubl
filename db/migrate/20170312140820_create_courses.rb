class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :term
      t.string :rubric
      t.integer :course_number
      t.string :section
      t.integer :credit_hours
      t.string :course_type
      t.string :day
      t.string :time
      t.string :instructor
      t.string :instructor_rank

      t.timestamps
    end
  end
end
