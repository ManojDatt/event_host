class Album < ApplicationRecord
	
	belongs_to :gallery
	has_many :videos, as: :avatarable, dependent: :destroy
	has_many :images, as: :avatarable, dependent: :destroy
end
