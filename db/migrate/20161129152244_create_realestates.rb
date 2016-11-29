class CreateRealestates < ActiveRecord::Migration[5.0]
  def change
    create_table :realestates do |t|
      t.string :name
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :remarks
      t.string :route1
      t.string :station1
      t.integer :distance_walk1
      t.string :route2
      t.string :station2
      t.integer :distance_walk2

      t.timestamps
    end
  end
end
