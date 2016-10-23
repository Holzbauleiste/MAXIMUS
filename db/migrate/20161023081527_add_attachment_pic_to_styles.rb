class AddAttachmentPicToStyles < ActiveRecord::Migration
  def self.up
    change_table :styles do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :styles, :pic
  end
end
