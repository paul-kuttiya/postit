class CreateComments < activeRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.timestamps
    end
  end
end
