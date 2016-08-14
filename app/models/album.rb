class Album < ApplicationRecord
	
	
	# has_many :videos, as: :avatarable, dependent: :destroy
	has_many :images, as: :avatarable, dependent: :destroy
	 accepts_nested_attributes_for :images, :allow_destroy => true
	# accepts_nested_attributes_for :videos, :allow_destroy => true
end
