class Element < ActiveRecord::Base
	belongs_to :campaign
	has_many :candidate_elements
end
