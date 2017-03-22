class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :fname
      t.string :lname
      t.integer :rank

      t.timestamps
    end
  end
end
