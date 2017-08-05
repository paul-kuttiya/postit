class PostCategories < activeRecord::Migration[5.1]
  def change
    create_table :post_categories do |t|
      t.integer :post_id, :category_id
    end
  end
end
