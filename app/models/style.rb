class Style < ApplicationRecord
	has_many :pictures, :dependent => :destroy
end
