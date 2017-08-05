class AddUsersSlug < activeRecord::Migration
  def change
    add_column :users, :slug, :string
  end
end
