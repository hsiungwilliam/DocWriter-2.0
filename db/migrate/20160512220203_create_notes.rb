class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :technique
      t.string :id_first
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
