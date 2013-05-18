class Comment < ActiveRecord::Migration
  def up
  	create_table :comments do |t|
  		t.text :comment_text
  	end
  end

  def down
  	drop :comments
  end
end
