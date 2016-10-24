class Style < ApplicationRecord
has_attached_file :pic, styles: { medium: "300x300>", thumb: "100x100>", normalermodus: "500x500>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end
