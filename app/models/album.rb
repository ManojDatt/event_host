class Album < ApplicationRecord
	
	
	has_many :videos, as: :avatarable, dependent: :destroy
	has_many :single_images, as: :imagable, dependent: :destroy
	accepts_nested_attributes_for :single_images, :allow_destroy => true
	accepts_nested_attributes_for :videos, :allow_destroy => true
end
