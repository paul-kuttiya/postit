class CreateComments < activeRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.timestamps
    end
  end
end
