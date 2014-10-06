class AddIndexesAndRelationshipsForPosts < ActiveRecord::Migration
  def change
    add_column :posts, :category_id, :integer
    add_index :posts, :category_id
    add_index :posts, :type
  end
end
