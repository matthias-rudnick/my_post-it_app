class CreateCategories < ActiveRecord::Migration
  def up
  	create_table :categories
  	add_column(:categories, :name, :string)
  end

  def down
  	drop_table categories
  end
end
