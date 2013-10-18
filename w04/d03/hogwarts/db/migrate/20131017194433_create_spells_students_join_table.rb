class CreateSpellsStudentsJoinTable < ActiveRecord::Migration
  def change
    create_table :spells_students, id: false do |t|
      t.integer :spell_id
      t.integer :student_id
    end
  end
end
