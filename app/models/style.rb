class Style < ApplicationRecord
<<<<<<< HEAD
	has_many :pictures, :dependent => :destroy
end
=======
	has_many :uploads, :dependent => :destroy
	accepts_nested_attributes_for :uploads, :reject_if => jklgjhkkk { |t| t['upload'].nil? }
end


class Upload < ActiveRecord::Base
	belongs_to :style
	has_attached_file :pic, styles: { medium: "300x300>", thumb: "100x100>", normalermodus: "500x500>" }, default_url: "/images/:style/missing.png"
 	validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end
>>>>>>> b34782df85dde61467cdcb35deed810da5d55e08
