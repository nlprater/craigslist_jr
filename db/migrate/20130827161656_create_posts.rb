class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :price
      t.string :category_id
      t.string :edit_key
      t.timestamps
    end
  end
end
