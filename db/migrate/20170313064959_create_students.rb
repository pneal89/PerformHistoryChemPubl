class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :uid
      t.integer :act_math
      t.string :degree
      t.string :email
      t.string :ethnicity
      t.string :fname
      t.string :gender
      t.date :graduation
      t.integer :high_school
      t.string :lname
      t.integer :prior_college
      t.integer :transfer_hours

      t.timestamps
    end
  end
end
