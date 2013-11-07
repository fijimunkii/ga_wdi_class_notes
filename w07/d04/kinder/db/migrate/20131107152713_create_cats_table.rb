class CreateCatsTable < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :img_url
      t.integer :num_hot, :default => 0
      t.integer :num_not, :default => 0

      t.timestamps
    end
  end
end
