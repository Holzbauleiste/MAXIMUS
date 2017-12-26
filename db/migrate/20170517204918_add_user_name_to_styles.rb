class AddUserNameToStyles < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :user_name, :string
  end
end
