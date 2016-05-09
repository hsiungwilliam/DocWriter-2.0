class CreateSubSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_sub_categories do |t|
      t.string :title
      t.references :sub_catergory
      t.timestamps null: false
    end
  end
end
