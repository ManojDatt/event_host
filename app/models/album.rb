class Album < ApplicationRecord
	has_many :images ,dependent: :destroy
	belongs_to :gallery
	
end
