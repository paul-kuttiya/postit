class AddTimeZonesToUsers < activeRecord::Migration[5.1]
  def change
    add_column :users, :time_zone, :string
  end
end
