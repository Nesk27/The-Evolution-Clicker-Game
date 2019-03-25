class Player < ApplicationRecord
	
	validates :dna, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :name, presence: true
	validates :level, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :level2, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :level3, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :level4, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :level5, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :level6, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :level7, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :level8, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :level9, numericality: { greater_than_or_equal_to: 0, allow_nil: false}
	validates :level10, numericality: { greater_than_or_equal_to: 0, allow_nil: false}

end

