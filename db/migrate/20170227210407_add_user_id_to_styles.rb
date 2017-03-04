class AddUserIdToStyles < ActiveRecord::Migration[5.0]
  def change
    add_reference :styles, :user, index: true
    add_foreign_key :styles, :users
  end
end
