class AddCategoriesSlug < activeRecord::Migration
  def change
    add_column :categories, :slug, :string
  end
end
