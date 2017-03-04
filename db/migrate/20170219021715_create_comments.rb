class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :style, index: true
      t.references :user, index: true
      t.string :nameofuser

      t.timestamps
    end
  	add_foreign_key :comments, :users
    add_foreign_key :comments, :styles
  end
end
