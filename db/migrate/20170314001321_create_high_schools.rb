class CreateHighSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :high_schools do |t|
      t.string :city
      t.string :state
      t.string :name
      t.string :uid
      t.string :county

      t.timestamps
    end
  end
end
