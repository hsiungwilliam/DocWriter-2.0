class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.text :content	
      t.references :subsubcategory
      t.timestamps null: false
    end
  end
end
