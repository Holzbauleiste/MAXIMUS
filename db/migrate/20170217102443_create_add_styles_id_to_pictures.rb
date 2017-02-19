class CreateAddStylesIdToPictures < ActiveRecord::Migration[5.0]
  def change
  	add_column :pictures, :styles_id, :integer
    end
end
