class AddStyleIdToComments < ActiveRecord::Migration[5.0]
  def change
  	add_column :comments, :styles_id, :integer
  end
end
