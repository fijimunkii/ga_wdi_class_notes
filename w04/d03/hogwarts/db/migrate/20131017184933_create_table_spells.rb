class CreateTableSpells < ActiveRecord::Migration
  def up
    create_table :spells do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :spells
  end
end
