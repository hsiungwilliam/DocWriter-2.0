class CreateSubsubcategories < ActiveRecord::Migration
  def change
    create_table :subsubcategories do |t|
      t.string :title
      t.references :subcategory
      t.timestamps null: false
    end
  end
end
