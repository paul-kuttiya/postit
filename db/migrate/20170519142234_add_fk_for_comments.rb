class AddFkForComments < ActiveRecord::Migration[5.1]
    add_column :comments, :user_id, :integer
    add_column :comments, :post_id, :integer
  end
end
