class Style < ApplicationRecord
has_attached_file :pic, styles: { medium: "300x300>", thumb: "100x100>", normalermodus: "10000x10000" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end
