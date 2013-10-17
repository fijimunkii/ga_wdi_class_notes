class ChangeHouseName < ActiveRecord::Migration
  def up
    change_column :houses, :name, :string
  end

  def down
    change_column :houses, :name, :integer
  end
end
