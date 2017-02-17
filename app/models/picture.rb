class Picture < ApplicationRecord
	belongs_to :style
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", normalermodus: "500x500>" }, default_url: "/images/:style/missing.png"
 	do_not_validate_attachment_file_type :image, content_type: /\Aimage\/.*\z/
end
