class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.text :content	
      t.reference :sub_sub_category
      t.timestamps null: false
    end
  end
end
