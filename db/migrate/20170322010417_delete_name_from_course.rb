class DeleteNameFromCourse < ActiveRecord::Migration[5.0]
  def change
    remove_column :instructors, :fname
    remove_column :instructors, :lnamera
  end
end
