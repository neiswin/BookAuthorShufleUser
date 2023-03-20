class CreateShufles < ActiveRecord::Migration[7.0]
  def change
    create_table :shufles do |t|
      t.string :shufle_name

      t.timestamps
    end
  end
end
