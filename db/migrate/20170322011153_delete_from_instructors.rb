class DeleteFromInstructors < ActiveRecord::Migration[5.0]
  def change
    remove_column :instructors, :DeleteNameFromCourse
  end
end
