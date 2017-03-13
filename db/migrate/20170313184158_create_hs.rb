class CreateHs < ActiveRecord::Migration[5.0]
  def change
    create_table :hs do |t|
      t.string :city
      t.string :country
      t.string :name
      t.string :school_id
      t.string :state

      t.timestamps
    end
  end
end
