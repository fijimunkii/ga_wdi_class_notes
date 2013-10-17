class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :name

      t.timestamps
    end
  end
end
