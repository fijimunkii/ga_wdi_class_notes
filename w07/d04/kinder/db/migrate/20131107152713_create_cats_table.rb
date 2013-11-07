class CreateCatsTable < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :img_url
      t.integer :num_hot
      t.integer :num_not

      t.timestamps
    end
  end
end
